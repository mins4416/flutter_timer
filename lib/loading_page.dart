import 'package:flutter/material.dart';
import 'main_timer.dart';
import 'dart:async';

class LoadingApp extends StatefulWidget {
  @override
  LoadingAppState createState() => LoadingAppState();
}

class LoadingAppState extends State<LoadingApp> {
  //Timer? _timer;
  LoadingAppState() {
    //정해진 시간 이후에 다음 페이지로 이동함
    Timer(Duration(milliseconds: 2000), () {
      setState(() {
        Image.asset('assets/images/loading_page_time.png',
            width: 150, height: 150);
      });
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => MainTimerApp()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/images/loading_page_time.png',
                  width: 150, height: 150),
              //png 파일은 왜 배경이 흰색이지?
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                'Time is flowing like a river',
                style: TextStyle(
                  color: Color.fromRGBO(136, 136, 136, 1.0),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              //Copyright © 2021 Salt and Berry Co.,Ltd.\nAll rights reserved.
              //젤 밑에서 위로 어느 정도 띄우고 저작권 관련 문자열을 넣어야하는데
            ],
          ),
        ),
      ),
    );
  }
}
