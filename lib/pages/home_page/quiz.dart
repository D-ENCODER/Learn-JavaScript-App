import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:html_unescape/html_unescape.dart';
import 'quiz_option.dart';

class FirstQuiz extends StatefulWidget {
  @override
  _FirstQuizState createState() => _FirstQuizState();
}

class _FirstQuizState extends State<FirstQuiz> {
  List questions;
  String currentTitle;
  String currentCorrectAnswer;
  List<dynamic> currentAnswers;
  int corrects;
  int currentQuestion;
  int selectedAnswer;
  DateTime now;

  @override
  void initState() {
    this.now = DateTime.now();
    this.corrects = 0;
    this.currentQuestion = 0;
    this.questions = null;
    this.selectedAnswer = null;
    this.getQuestions();
    super.initState();
  }

  Future<void> getQuestions() async {
    final String response =
        await rootBundle.loadString('assets/first_quiz.json');
    final data = await json.decode(response);

    List answers = [data['results'][0]['correct_answer']] +
        data['results'][0]['incorrect_answers'];
    setState(() {
      this.questions = data['results'];
      this.currentTitle = data['results'][0]['question'];
      this.currentCorrectAnswer = data['results'][0]['correct_answer'];
      this.currentAnswers = answers..shuffle();
    });
  }

  void verifyAndNext(BuildContext context) {
    String textSelectAnswer = this.currentAnswers[this.selectedAnswer];
    if (textSelectAnswer == this.currentCorrectAnswer) {
      setState(() {
        this.corrects++;
      });
    }
    this.nextQuestion(context);
  }

  void nextQuestion(BuildContext context) {
    int actualQuestion = this.currentQuestion;
    if (actualQuestion + 1 < this.questions.length) {
      List answers = [this.questions[actualQuestion + 1]['correct_answer']] +
          this.questions[actualQuestion + 1]['incorrect_answers'];
      setState(() {
        this.currentQuestion++;
        this.currentTitle = this.questions[actualQuestion + 1]['question'];
        this.currentCorrectAnswer =
            this.questions[actualQuestion + 1]['correct_answer'];
        this.currentAnswers = answers..shuffle();
        this.selectedAnswer = null;
      });
    } else {
      Navigator.pushReplacementNamed(context, 'firstresult', arguments: {
        'corrects': this.corrects,
        'start_at': this.now,
        'list_length': this.questions.length,
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);
    return Scaffold(
      backgroundColor: theme.backgroundColor,
      body: SafeArea(
        child: (this.questions != null)
            ? Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                  right: 20.0,
                  bottom: 20.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: Icon(
                              Icons.close,
                              color: Colors.white,
                              size: 32.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          'Question ${this.currentQuestion + 1}',
                          style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          '/${this.questions.length}',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.grey[300],
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(25.0),
                      margin: const EdgeInsets.symmetric(vertical: 30.0),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Text(
                        HtmlUnescape().convert(this.currentTitle),
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemCount: this.currentAnswers.length + 1,
                        itemBuilder: (context, index) {
                          if (index == this.currentAnswers.length) {
                            return GestureDetector(
                              onTap: () {
                                if (this.selectedAnswer != null)
                                  this.verifyAndNext(context);
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 30,
                                ),
                                padding: EdgeInsets.all(15),
                                height: 60,
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
                                      Color(0xff71DCB2)
                                    ],
                                  ),
                                  borderRadius: BorderRadius.all(
                                    Radius.circular(180),
                                  ),
                                ),
                                child: Column(
                                  children: [
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          'Next',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 22,
                                              fontWeight: FontWeight.w900),
                                        ),
                                        Icon(
                                          Icons.arrow_forward,
                                          color: Colors.white,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }
                          String answer = this.currentAnswers[index];
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                this.selectedAnswer = index;
                              });
                            },
                            child: FirstQuizOption(
                              index: index,
                              selectedAnswer: this.selectedAnswer,
                              answer: answer,
                            ),
                          );
                        },
                      ),
                    )
                  ],
                ),
              )
            : Center(
                child: CircularProgressIndicator(
                  valueColor: new AlwaysStoppedAnimation<Color>(
                    Color(0xff73DDB7),
                  ),
                ),
              ),
      ),
    );
  }
}
