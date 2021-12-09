import 'package:flutter/material.dart';
import 'main_page_choice.dart';

class TimeLineApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [Text('타임라인')],
          ),
          elevation: 0.0,
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Color.fromRGBO(46, 96, 116, 1.0),
          leading: IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainPageChoiceApp()));
            },
          ),
        ),
        body: Container(
          child: Center(
            child: Text('CENTER'),
          ),
        ));
  }
}
