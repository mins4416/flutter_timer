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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text('Add timer and other menu. here.'),
                ],
              ),
            ),
          ),
        ),
        onWillPop: () async => false);
  }
}
