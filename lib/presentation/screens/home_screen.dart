import 'package:flutter/material.dart';

import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:text_maker/infrastructure/models/document_model.dart';
import 'package:text_maker/infrastructure/services/shared_preferences_service_impl.dart';
import 'package:text_maker/presentation/providers/files_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  static const name = 'home-screen';

  const HomeScreen({super.key});

  @override
  ConsumerState createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  late DocumentModel _document;
  late TextEditingController _controller;
  late SharedPreferences _preferences;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final sharedPrefsService = SharedPreferencesServiceImpl();

    _controller = TextEditingController();
    _document = ref.watch(filesProvider(title: _controller.value.text));

    sharedPrefsService.getSharedPrefs().then((value) {
      _preferences = value;
      int number = _preferences.getInt('number') ?? 1;

      if (number == 1) _preferences.setInt('number', 1);

      _document = ref.watch(filesProvider(title: 'document$number'));
      _controller.text = _document.title;
    });

    return Scaffold(
      appBar: AppBar(
        elevation: 8,
        centerTitle: true,
        title: EditableText(
          textCapitalization: TextCapitalization.words,
          strutStyle: StrutStyle.fromTextStyle(const TextStyle(fontSize: 16)),
          textAlign: TextAlign.center,
          controller: _controller,
          focusNode: FocusNode(),
          style: const TextStyle(),
          cursorColor: Colors.amber,
          backgroundCursorColor: Colors.white,
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {
              showMaterialModalBottomSheet<void>(
                elevation: 8,
                backgroundColor: Colors.black,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20),
                  ),
                ),
                context: context,
                builder: (context) => SizedBox(
                  height: size.height - kToolbarHeight - 45,
                  child: ListView(
                    children: <Widget>[
                      ListTile(
                        leading: const Icon(Icons.file_open_rounded),
                        title: const Text('Abrir'),
                        onTap: () {
                          _document.openFile();
                          _controller.text = _document.title;
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.save_as_rounded),
                        title: const Text('Guardar como'),
                        onTap: () {
                          _document.saveFile(title: _controller.value.text);
                          _document.controller.document.close();
                          _document.increase();
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
            icon: const Icon(Icons.more_vert_outlined),
          ),
        ],
      ),
      body: QuillProvider(
        configurations: QuillConfigurations(
          controller: _document.controller,
          sharedConfigurations: const QuillSharedConfigurations(
            locale: Locale('es'),
          ),
        ),
        child: Column(
          children: <Widget>[
            const QuillToolbar(),
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(16),
                color: Colors.black,
                child: QuillEditor.basic(
                  configurations: const QuillEditorConfigurations(
                    customStyles: DefaultStyles(),
                    autoFocus: false,
                    readOnly: false,
                    scrollable: true,
                    showCursor: true,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _document.controller.dispose();
    super.dispose();
  }
}
