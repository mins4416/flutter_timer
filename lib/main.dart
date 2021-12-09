import 'package:flutter/material.dart';
import 'loading_page.dart';
import 'intro_page.dart';
import 'main_timer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoadingApp(),
      //home: IntroPageApp(),
    );
  }
}
