import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:text_maker/config/config.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const ProviderScope(child: TextMaker()));
}

class TextMaker extends StatefulWidget {
  const TextMaker({super.key});

  @override
  State<TextMaker> createState() => _TextMakerState();
}

class _TextMakerState extends State<TextMaker> {
  @override
  void initState() {
    super.initState();

    FlutterNativeSplash.remove();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Text Maker',
      theme: AppTheme.theme,
      routerConfig: appRoutes,
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        DefaultMaterialLocalizations.delegate,
        DefaultWidgetsLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: const <Locale>[
        Locale('en', 'US'),
      ],
    );
  }
}
