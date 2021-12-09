import 'package:flutter/material.dart';
import 'main_page_choice.dart';

class SettingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(158, 158, 158, 1.0),
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [Text('설정')],
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
        child: Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
          child: Container(
            padding: EdgeInsets.only(right: 20, left: 20),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(40.0))),
            child: Center(
              child: Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(padding: EdgeInsets.only(top: 15)),
                    ElevatedButton(onPressed: () {}, child: Text('Enable')),
                    Column(
                      children: [Text('State Change')],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
