import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz_pro/Topics_MCQ_Test/Topics_MCQ_Test.dart';

import '../constants.dart';
import '../drawer.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.white,
              size: 30,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        title: Text('Quiz Time'),
        centerTitle: true,
        backgroundColor: Color(0xff37474f),
      ),
      drawer: MyDrawer(),
      body: ListView(
        physics: BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return TopicsMCQTest();
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
                        'Topics MCQs Test',
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
                      return;
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
                        'Basic MCQs Test',
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
                      return;
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
                        'Moderate MCQs Test',
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
                      return;
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
                        'Advance MCQs Test',
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
                      return;
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
                        'Output MCQs Test',
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
        ],
      ),
    );
  }
}
