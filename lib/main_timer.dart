import 'package:flutter/material.dart';

class MainTimerApp extends StatefulWidget {
  @override
  MainTimerAppState createState() => MainTimerAppState();
}

class MainTimerAppState extends State<MainTimerApp> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
          body: Container(
            child: Center(
              child: Column(
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(padding: EdgeInsets.all(70)),
                  Text(
                    '준비 되셨나요?',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(padding: EdgeInsets.all(50)),
                  Text('타이머 위젯 넣을자리'),
                  Padding(padding: EdgeInsets.all(10)),
                  ElevatedButton(onPressed: () {}, child: Text('시작'))
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async => false);
  }
}
