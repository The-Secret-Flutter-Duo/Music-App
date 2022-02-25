import 'package:flutter/material.dart';
import 'package:appli_music/welcome_page.dart';

import 'l10n/l10n.dart';

const d_red = const Color(0xFFE97170);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music app',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
      ),
      supportedLocales: L10n.all,
      localizationsDelegates: [],
      debugShowCheckedModeBanner: false,
      home: WelcomePage(),
    );
  }
}
