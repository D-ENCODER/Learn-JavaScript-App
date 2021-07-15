import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz_pro/Topics_MCQ_Test/Wave-1/Test-2/quiz.dart';
import 'package:quiz_app/Quiz_pro/Topics_MCQ_Test/Wave-1/Wave_one.dart';

class TestTwoResult extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    Size screen = MediaQuery.of(context).size;
    Map<String, dynamic> args = ModalRoute.of(context).settings.arguments;

    int time = DateTime.now().difference(args['start_at']).inSeconds;
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              width: screen.width - 40.0,
              padding: const EdgeInsets.all(20.0),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      offset: Offset(6.0, 12.0),
                      blurRadius: 6.0,
                    )
                  ]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: screen.width / 3.5,
                    width: screen.width / 3.5,
                    child: Image(
                      image: AssetImage((args['corrects'] >=
                              13) //TODO HERE YOU WILL HAVE TO CHANGE THIS VALUE IN EVERY QUIZ
                          ? 'assets/images/celebrate.png'
                          : 'assets/images/repeat.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      (args['corrects'] >=
                              13) //TODO HERE YOU WILL HAVE TO CHANGE THIS VALUE IN EVERY QUIZ
                          ? 'Congratulations!!'
                          : 'Completed!',
                      style: TextStyle(
                        fontSize: 30.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 8.0),
                    child: Text(
                      (args['corrects'] >=
                              13) //TODO HERE YOU WILL HAVE TO CHANGE THIS VALUE IN EVERY QUIZ
                          ? 'You are amazing!!'
                          : 'Better luck next time!',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                  Center(
                    child: Text(
                      'You scored ${args['corrects']} out of ${args['list_length']} in $time seconds.',
                      style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  Container(
                      child: (args['corrects'] >= 13)
                          ? MySecondGestureWidget()
                          : MyGestureWidget()),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MySecondGestureWidget extends StatefulWidget {
  @override
  _MySecondGestureWidgetState createState() => _MySecondGestureWidgetState();
}

class _MySecondGestureWidgetState extends State<MySecondGestureWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
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
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.7),
              blurRadius: 25,
              offset: Offset(5, 10),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color(0Xff6B86D1),
              Color(0xff86E3E7),
              Color(0xff71DCB2),
            ],
          ),
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
                  'Next Topic',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class MyGestureWidget extends StatefulWidget {
  @override
  _MyGestureWidgetState createState() => _MyGestureWidgetState();
}

class _MyGestureWidgetState extends State<MyGestureWidget> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return TestTwoQuiz();
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
            BoxShadow(
              color: Color(0xff000000).withOpacity(0.7),
              blurRadius: 25,
              offset: Offset(5, 10),
            ),
          ],
          gradient: LinearGradient(
            colors: [
              Color(0xff71DCB2),
              Color(0xff86E3E7),
              Color(0Xff6B86D1),
            ],
          ),
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
                  'Re-Test',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w900),
                ),
                Icon(Icons.arrow_forward),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
