import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:file_saver/file_saver.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'package:text_maker/infrastructure/models/document_model.dart';
import 'package:text_maker/infrastructure/services/shared_preferences_service_impl.dart';

part 'files_provider.g.dart';

@Riverpod(keepAlive: true)
class Files extends _$Files {
  @override
  DocumentModel build({String title = ''}) => DocumentModel(
        controller: QuillController.basic(),
        fileSaver: FileSaver(),
        increase: increase,
        openFile: openFile,
        saveFile: saveFile,
        title: title,
      );

  Future<void> saveFile({required String title}) async {
    final document = state.controller.document.toPlainText();
    final file = await File(
      '${await FilePicker.platform.getDirectoryPath()}/$title.txt',
    ).writeAsString(document);

    state.fileSaver.saveFile(
      name: title,
      file: file,
      mimeType: MimeType.text,
      ext: 'txt',
    );

    state = state.copyWith(file: file, title: title);
  }

  Future<File?> openFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      allowedExtensions: ['txt'],
      allowMultiple: false,
      dialogTitle: 'Elija un archivo de texto',
      type: FileType.custom,
    );

    if (result != null) {
      final File file = File(result.files.single.path!);
      final String text = file.readAsStringSync();
      final Delta delta = Delta();

      delta.insert(text);

      state.controller.document = Document.fromDelta(delta);
      state.controller.moveCursorToEnd();

      final path = file.path.split('/');
      final title = path[path.length - 1];

      state = state.copyWith(title: title.split('.')[0], file: file);

      return file;
    } else {
      return null;
    }
  }

  Future<void> increase() async {
    if (state.title.contains('document')) {
      final preferences = await SharedPreferencesServiceImpl().getSharedPrefs();
      int number = preferences.getInt('number') ?? 1;

      await preferences.setInt('number', ++number);
    }
  }
}
