import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'loading_page.dart';
import 'package:introduction_screen/introduction_screen.dart';

class IntroPageApp extends StatefulWidget {
  @override
  IntroPageState createState() => IntroPageState();
}

class IntroPageState extends State<IntroPageApp> {
  @override
  Widget build(BuildContext context) {
    PageDecoration pageDecoration = PageDecoration(
      titleTextStyle: TextStyle(
          fontSize: 18.0, fontWeight: FontWeight.w700, color: Colors.white),
      bodyTextStyle: TextStyle(fontSize: 14.0, color: Colors.white),
      descriptionPadding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      imagePadding: EdgeInsets.all(20),
      boxDecoration: BoxDecoration(
        color: Color.fromRGBO(77, 150, 194, 1.0),
        // 아래 코드는 오른쪽 위에서 왼쪽 아래 사선으로 그라디언트를 입혀주는 코드
        // gradient: LinearGradient(
        //     begin: Alignment.topRight,
        //     end: Alignment.bottomLeft,
        //     stops: [
        //       0.1,
        //       0.5,
        //       0.7,
        //       0.9
        //     ],
        //     colors: [
        //       //Color.fromRGBO(77, 150, 194, 1.0),
        //       Colors.deepOrange,
        //       Colors.deepOrangeAccent,
        //       Colors.red,
        //       Colors.redAccent
        //     ]),
      ),
    );
    return IntroductionScreen(
      // globalBackgroundColor: Colors.deepOrangeAccent,
      globalBackgroundColor: Color.fromRGBO(77, 150, 194, 1.0),
      pages: [
        PageViewModel(
          title: "소중한 시간 허투루 쓰고 있지 않나요?",
          body: "시간을 지배할 줄 아는 사람은\n인생을 지배할 줄 아는 사람이다\n- 에센 바흐 -",
          image: SvgPicture.asset(
              'assets/images/intro/undraw_on_the_office_re_cxds.svg',
              width: 200,
              height: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "우리는 하루에 얼마나 집중 할 수 있을까요?",
          body: "짧은 인생은\n시간낭비에 의해 더욱 짧아진다\n- S. 존슨 -",
          image: SvgPicture.asset(
              'assets/images/intro/undraw_photocopy_re_gln4.svg',
              width: 200,
              height: 200),
          decoration: pageDecoration,
        ),
        PageViewModel(
          title: "저와 같이 시작해 볼까요?",
          body: "시간을 선택하는 것은\n시간을 절약하는 것이다\n- 베이컨 -",
          image: SvgPicture.asset(
              'assets/images/intro/undraw_interview_re_e5jn.svg',
              width: 200,
              height: 200),
          decoration: pageDecoration,
        ),
      ],
      onDone: () => goMainTimerApp(context),
      onSkip: () => goMainTimerApp(context),
      showSkipButton: true,
      skipFlex: 0,
      nextFlex: 0,
      skip: Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      next: Icon(
        Icons.arrow_forward,
        color: Colors.white,
      ),
      done: Text(
        '시작하기',
        style: TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
      ),
      dotsDecorator: DotsDecorator(
        size: Size(10.0, 10.0),
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
    // return Scaffold(
    //   body: Text('IntroPage'),
    // );
  }

  void goMainTimerApp(context) {
    Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (context) {
      return LoadingApp();
    }), (route) => false);
  }
}
