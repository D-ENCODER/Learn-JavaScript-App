// First Page
import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page/quiz.dart';
import 'package:quiz_app/pages/second_page/second_page.dart';
import '../../constants.dart';
import '../../drawer.dart';

class FirstPage extends StatefulWidget {
  @override
  _FirstPageState createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  Color color1 = Color(0xff6F91D5);
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
        title: Text('JS Overview'),
        centerTitle: true,
        backgroundColor: Color(0xff37474f),
      ),
      drawer: MyDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(15.0),
              decoration: BoxDecoration(
                  color: Color(0xff373737),
                  borderRadius: BorderRadius.circular(30.0),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.7),
                      blurRadius: 25,
                      offset: Offset(5, 10),
                    ),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'JavaScript Overview\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'This course will teach you the basic and advancedconcepts of JavaScript.\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'JavaScript Prerequisites\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'What do you need before learning JavaScript? In order to learn JavaScript, you need to have:\n\n1. Computer literacy.\n2. Basic understanding of HTML.\n3. Basic understanding of CSS.\n',
                      style: mySmallTextStyle(),
                    ),
                    Icon(Icons.lightbulb_outline_rounded),
                    Text(
                      'Tip! JavaScript is easy to learn! Although you may struggle at first, you can re-read lessons and retry coding the given examples.\n',
                      style: tipTextStyle(),
                    ),
                    Text(
                      'Easier with Examples\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'This course contains hundreds of examples, each with the "Try It Yourself" function, making learning easier, faster and much more enjoyable.\n\nHere is just one example out of many interesting things JavaScript can do:\n\nThis example shows an element that when clicked, its style (in this case, the background-calor) changes.',
                      style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Container(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            if (color1 == Color(0xff6F91D5)) {
                              color1 = Color(0xff73DDB7);
                            } else {
                              color1 = Color(0xff6F91D5);
                            }
                            // color1 = Color(0xff00FF00);
                          });
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 25,
                            vertical: 20,
                          ),
                          decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(
                                color: Color(0xff000000).withOpacity(0.7),
                                blurRadius: 25,
                                offset: Offset(5, 10),
                              ),
                            ],
                            borderRadius: BorderRadius.all(
                              Radius.circular(20),
                            ),
                            color: color1,
                          ),
                          height: 150,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.fromLTRB(
                                        23, 53, 23, 53),
                                    child: Text(
                                      '\nClick Me To change the color',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w900),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Color(0xff373737),
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [myBoxShadow()]),
                      child: CodeEditor(
                        edit: false,
                        model: EditorModel(
                          files: files,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'There will be more exciting examples! Good luck and have fun.',
                      style: mySmallTextStyle(),
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
                        return FirstQuiz();
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
                  boxShadow: [myBoxShadow()],
                  color: Color(0xff6E91D5),
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
                          'Take Quiz',
                          style: screenTextStyle(),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
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
                        return JavaScriptIntroduction();
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
                  boxShadow: [myBoxShadow()],
                  color: Color(0xff6E91D5),
                  borderRadius: BorderRadius.all(
                    Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Next', style: screenTextStyle()),
                        Icon(
                          Icons.arrow_forward,
                          size: 30,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<FileEditor> files = [
    new FileEditor(
      name: "script.js",
      language: "js",
      code:
          "function changeColor(element) {\n   var currentColorelement.style.backgroundColor;\n   if (currentColor == \"red\") {\n    element. slyle.backgroundColor = \"green\";\n   } else {\n     element.style.backgroundColor = \"red\";\n   }\n}",
    ),
  ];
}
