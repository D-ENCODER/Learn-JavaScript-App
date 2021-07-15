//second page
import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/third_page/third_page.dart';
import 'package:quiz_app/pages/second_page/quiz.dart';
import '../../constants.dart';
import '../../drawer.dart';

class JavaScriptIntroduction extends StatefulWidget {
  @override
  _JavaScriptIntroductionState createState() => _JavaScriptIntroductionState();
}

class _JavaScriptIntroductionState extends State<JavaScriptIntroduction> {
  Color color1 = Color(0xffFF0000);
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
        title: Text('JS Introduction'),
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
                    myBoxShadow(),
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    Text(
                      'What is JavaScript?\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'JavaScript is a programming or scripting language that allows the implementation of features on web pages.\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'Looking Back\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'To better understand JavaScript, we can look back at what we already know.\n\nWe know that Hyper Text Markup Language (HTML) elements are the building blocks of the web pages.\n\nAnd, Cascading Style Sheet (CSS) is used for designing HTML elements.\n\n JavaScript on the other hand, is what implements the features of web pages.\n\nWe can simplify this ecplanation by taking a look at this example:',
                      style: mySmallTextStyle(),
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
                    Icon(Icons.lightbulb_outline_rounded),
                    Text(
                      'Tip! As you may notice, this web page contains HTML, CSS and JavaScript.\n',
                      style: tipTextStyle(),
                    ),
                    Text(
                      'In the example, HTML is used to create the button. Then, CSS is used to design it. Finally, JavaScript is used to add a simple function that shows a dialog box, when the button is clicked.\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'What can JavaScript do?\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'Well, a lot! Here are some:\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'JavaScript can change the content of HTML elements.\n',
                      style: mySmallTextStyle(),
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
                          files: files1,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'JavaScript can change the value of the attributes\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'In this example, the value of the \'src\' attribute is changed. \n',
                      style: mySmallTextStyle(),
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
                          files: files2,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'JavaScript can change the styling of HTML elements.\n',
                      style: mySmallTextStyle(),
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
                          files: files3,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'This example contains a feature that can show or hide HTML elements.\n\nThis is another example of changing HTML styles.',
                      style: mySmallTextStyle(),
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
                          files: files4,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
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
                        return SecondQuiz();
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
                        Text('Take Quiz', style: screenTextStyle()),
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
                        return JavaScriptWritingCode();
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
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n   <head>\n    <title> Try It Yourself </title>\n        <style type=\"text/css\">\n             button \n       {\n              font-family: sans-serif;\n              border: none;\n              padding: 15px 30px;\n              font-size: 20px;\n              outline: none;\n              margin: 10px;\n       }\n       #btn {\n           background-color: rgb(23, 52, 89);\n           color: #f8f9f9;\n           box-shadow: .5px .5px 1px 2px #000000;\n       }\n        </style>\n   </head>\n   <body>\n        <button id=\"btn\"> Show a Dialog </button>\n\n        <script type=\"text/javascript\">\n          document.getElementById(\"btn\").onclick = function() {\n          alert(\"I am a dialog box!\")\n       }\n        </script>\n   </body>\n</html>",
    ),
  ];
  List<FileEditor> files1 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n   <head>\n    <title> Try It Yourself </title>\n   </head>\n   <body>\n    <p id=\"demo\"> Hello World! </p>\n    <button type=\"button\" onclick=\"myFunc()\"> Change Value </button>\n\n    <script>\n       function myFunc() {\n           document.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n       }\n    </script>\n   </body>\n</html>",
    ),
  ];
  List<FileEditor> files2 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n   <head>\n    <title> Try It Yourself </title>\n   </head>\n   <body>\n   <img src=\"images/sunflower.png\" id=\"image\" />\n   <button type=\"button\" onclick=\"myFunc()\"> Change Image </button>\n\n   <script>\n       function myFunc() {\n           document.getElementById(\"image\").src = \"images/star.png\";\n       }\n    </script>\n   </body>\n</html>",
    ),
  ];
  List<FileEditor> files3 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n   <head>\n    <title> Try It Yourself </title>\n   </head>\n   <body>\n    <p id=\"demo\" style=\"color: gold\"> Hello World! </p>\n    <button type=\"button\" onclick=\"myFunc()\"> Change Value </button>\n\n    <script>\n       function myFunc() {\n           document.getElementById(\"demo\").style.color = \"green\";\n       }\n           document.getElementById(\"demo\").style.fontWeight = \"bold\";\n           document.getElementById(\"demo\").style.fontSize = \"300%\";\n       }\n       }\n    </script>\n   </body>\n</html>",
    ),
  ];
  List<FileEditor> files4 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n   <head>\n    <title> Try It Yourself </title>\n   </head>\n   <body>\n    <div id=\"demo\" style=\"width: 200px; height: 200px; background-color: yellow\"> Hello World! </div>\n    <button type=\"button\" onclick=\"show()\"> Show </button>\n\n    <button type=\"button\" onclick=\"hide()\"> Hide </button>\n\n    <script>\n       function show() {\n           document.getElementById(\"demo\").style.display = \"block\";\n       }\n       function hide() {\n           document.getElementById(\"demo\").style.display = \"none\";\n       }\n       }\n    </script>\n   </body>\n</html>",
    ),
  ];
}
