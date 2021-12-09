import 'package:flutter/material.dart';

class MainPageChoiceApp extends StatefulWidget {
  @override
  MainPageChoiceState createState() => MainPageChoiceState();
}

class MainPageChoiceState extends State<MainPageChoiceApp> {
  BoxDecoration border_color =
      BoxDecoration(border: Border.all(color: Colors.red));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
      // appBar: AppBar(
      //   title: Text('AppBar'),
      // ),
      // body: Container(
      //   decoration: border_color,
      //   padding: EdgeInsets.only(left: 10, top: 40, bottom: 10),
      //   child: Row(
      //     children: [
      //       IconButton(
      //         onPressed: () {},
      //         icon: const Icon(
      //           Icons.menu,
      //           color: Colors.white,
      //           size: 30.0,
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: Container(
        width: MediaQuery.of(context).size.width / 2.5,
        child: Drawer(
          backgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(
                top: 50,
              )),
              InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      Padding(padding: EdgeInsets.only(left: 15)),
                      Icon(Icons.timeline, color: Colors.white),
                      Text(
                        ' 타임라인',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  )),
              Padding(padding: EdgeInsets.all(5)),
              InkWell(
                onTap: () {},
                child: Row(
                  children: [
                    Padding(padding: EdgeInsets.only(left: 15)),
                    Icon(
                      Icons.settings,
                      color: Colors.white,
                    ),
                    Text(
                      ' 설정',
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
