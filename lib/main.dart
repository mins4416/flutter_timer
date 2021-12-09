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
      //intro flag 확인 후 intro 를 확인한 사용자는 LoadingApp 을 바로 호출
      //home: LoadingApp(),
      //앱 최초 설치 후 실행시 IntroPageApp 호출
      //Skip 또는 시작하기를 했을 경우 flag setting
      home: IntroPageApp(),
    );
  }
}
