import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quiz_app/pages/forth_page/result.dart';
import 'package:quiz_app/pages/third_page/result.dart';
import 'package:quiz_app/screen.dart';
import 'package:quiz_app/pages/home_page/result.dart';
import 'package:quiz_app/pages/second_page/result.dart';
import 'package:quiz_app/splash_screen.dart';
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

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((value) => runApp(MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Learn JS',
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
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
      home: SecondPage(),
    );
  }
}
