import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:quiz_app/about.dart';
import 'package:quiz_app/pages/forth_page/result.dart';
import 'package:quiz_app/pages/home_page/home_page.dart';
import 'package:quiz_app/pages/home_page/result.dart';
import 'package:quiz_app/pages/second_page/result.dart';
import 'package:quiz_app/pages/third_page/result.dart';
import 'package:quiz_app/privacy_policy.dart';
import 'package:quiz_app/terms_and_conditions.dart';
import 'package:quotes/quotes.dart';
import 'Quiz_pro/Quiz_Screen.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-1/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-10/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-2/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-3/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-4/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-5/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-6/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-7/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-8/result.dart';
import 'Quiz_pro/Topics_MCQ_Test/Wave-1/Test-9/result.dart';
import 'constants.dart';
import 'package:url_launcher/url_launcher.dart';

import 'drawer.dart';

class CustomWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn JS',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: MyCustomWidget(),
      routes: {
        'firstresult': (context) => FirstResult(),
        'secondresult': (context) => SecondResult(),
        'thirdresult': (context) => ThirdResult(),
        'forthresult': (context) => ForthResult(),
        'testoneresult': (context) => TestOneResult(),
        'testtworesult': (context) => TestTwoResult(),
        'testthreeresult': (context) => TestThreeResult(),
        'testfourresult': (context) => TestFourResult(),
        'testfiveresult': (context) => TestFiveResult(),
        'testsixresult': (context) => TestSixResult(),
        'testsevenresult': (context) => TestSevenResult(),
        'testeightresult': (context) => TestEightResult(),
        'testnineresult': (context) => TestNineResult(),
        'testtenresult': (context) => TestTenResult(),
        'back': (context) => MyCustomWidget(),
      },
    );
  }
}

class MyCustomWidget extends StatefulWidget {
  @override
  _MyCustomWidgetState createState() => _MyCustomWidgetState();
}

class _MyCustomWidgetState extends State<MyCustomWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        centerTitle: true,
        backgroundColor: Color(0xff37474f),
      ),
      drawer: MyDrawer(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          Column(children: [
            Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xff373737),
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [myBoxShadow()]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'Quote Of The Day',
                      style: screenTextStyle(),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      Quotes.getRandom().getContent().toString(),
                      style: TextStyle(
                        fontFamily: 'Quotes',
                        fontSize: 20,
                        fontWeight: FontWeight.w300,
                        letterSpacing: 2.5,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FirstPage();
                    },
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff3E60FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Start Learning',
                        style: screenTextStyle(),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return QuizScreen();
                    },
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff3673FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Let\'s check your IQ',
                        style: screenTextStyle(),
                      ),
                      Image.asset(
                        'assets/images/IQ.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => launch(
                'https://drive.google.com/uc?id=12W2vKOVZJdSNrYScdnWsu8ync-VsjPpa&export=download'),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff2F85FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'JavaScript CheatSheet',
                        style: screenTextStyle(),
                      ),
                      Icon(
                        Icons.download_sharp,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return AboutSection();
                    },
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff2798FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'About',
                        style: screenTextStyle(),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => launch('mailto: dencoder0000@gmail.com'),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff1FAAFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Report A Bug',
                        style: screenTextStyle(),
                      ),
                      Icon(
                        Icons.bug_report_sharp,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => launch(
                'https://wa.me/917434076092?text=Hi%20Het%20Joshi%20!!!%20I%20downloaded%20your%20app%20and%20loved%20it%20too%20much,%20Thank%20you%20for%20making%20such%20a%20beautiful%20app%20%20%F0%9F%98%8D%F0%9F%98%8D'),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff17BDFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Whatsapp Us',
                        style: screenTextStyle(),
                      ),
                      Image.asset(
                        'assets/images/whatsapp.png',
                        width: 30,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () => launch(
                'https://docs.google.com/forms/d/e/1FAIpQLSeH27C0mWfnFBqGbVmILNw4Cb5yDaHf_E557xwg4H9dC4G2nA/viewform?usp=sf_link'),
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff10CFFF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'FeedBack',
                        style: screenTextStyle(),
                      ),
                      Image.asset(
                        'assets/images/feedback.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TermsAndConditions();
                    },
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff08E2FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Terms & Conditions',
                        style: screenTextStyle(),
                      ),
                      Image.asset(
                        'assets/images/terms.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return PrivacyPolicy();
                    },
                  ),
                );
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(
                horizontal: 25,
                vertical: 20,
              ),
              padding: EdgeInsets.all(20),
              height: 70,
              decoration: BoxDecoration(
                boxShadow: [
                  myBoxShadow(),
                ],
                color: Color(0xff00F4FF),
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Privacy Policy',
                        style: screenTextStyle(),
                      ),
                      Image.asset(
                        'assets/images/privacy.png',
                        width: 30,
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
