import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz_pro/Topics_MCQ_Test/Wave-1/Wave_one.dart';

import '../../constants.dart';
import '../../drawer.dart';

class TopicsMCQTest extends StatefulWidget {
  @override
  _TopicsMCQTestState createState() => _TopicsMCQTestState();
}

class _TopicsMCQTestState extends State<TopicsMCQTest> {
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
        title: Text('Topics MCQs Test'),
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
                      return WaveOne();
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
                        'Wave-1',
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
                color: Color(0xff327EFF),
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
                        'Wave-2',
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
                color: Color(0xff259BFF),
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
                        'Wave-3',
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
                color: Color(0xff19B9FF),
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
                        'Wave-4',
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
                color: Color(0xff0CD6FF),
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
                        'Wave-5',
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
                        'Wave-6',
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
