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
      backgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              SvgPicture.asset('assets/images/undraw_studying_re_deca.svg',
                  width: 200, height: 200),
              Padding(
                padding: EdgeInsets.all(10),
              ),
              Text(
                '소중한 당신의 시간을 기록해 보세요',
                style: TextStyle(
                  color: Colors.white70,
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
