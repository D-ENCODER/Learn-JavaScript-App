import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz_pro/Topics_MCQ_Test/Wave-1/Test-1/quiz.dart';

import '../../../constants.dart';
import '../../../drawer.dart';

class WaveOne extends StatefulWidget {
  @override
  _WaveOneState createState() => _WaveOneState();
}

class _WaveOneState extends State<WaveOne> {
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
        title: Text('Wave - 1'),
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
                      return TestOneQuiz();
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
                        'Test - 1',
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
                color: Color(0xff3770FF),
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
                        'Test - 2',
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
                color: Color(0xff3081FF),
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
                        'Test - 3',
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
                color: Color(0xff2991FF),
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
                        'Test - 4',
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
                color: Color(0xff22A2FF),
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
                        'Test - 5',
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
                color: Color(0xff1CB2FF),
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
                        'Test - 6',
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
                color: Color(0xff15C3FF),
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
                        'Test - 7',
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
                color: Color(0xff0ED3FF),
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
                        'Test - 8',
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
                color: Color(0xff07E4FF),
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
                        'Test - 9',
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
                        'Test - 10',
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
