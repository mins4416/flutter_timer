import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_timer.dart';

class LoadingApp extends StatefulWidget {
  @override
  LoadingAppState createState() => LoadingAppState();
}

class LoadingAppState extends State<LoadingApp> {
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
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => MainTimerApp()));
                },
                child: Text('시작하기'),
                style: ElevatedButton.styleFrom(
                    primary: Colors.amber,
                    minimumSize: Size(250, 30),
                    maximumSize: Size(250, 30)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
