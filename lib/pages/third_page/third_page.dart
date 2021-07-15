import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/third_page/quiz.dart';
import '../../constants.dart';
import '../../drawer.dart';

class JavaScriptWritingCode extends StatefulWidget {
  @override
  _JavaScriptWritingCodeState createState() => _JavaScriptWritingCodeState();
}

class _JavaScriptWritingCodeState extends State<JavaScriptWritingCode> {
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
        title: Text('JS Writing Code'),
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
                      'Writing JavaScript Code\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'JavaScript codes should be written inside the <script>  element.\n',
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
                    Text(
                      'But where should we write the <script> element?\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'Internal JavaScript\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'The <script> element can either be best in the <head>, in the <body> or both.\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'JavaScript in the <head>\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'In this example <script> is inside the <head> element.\n\nIt is recommended to put the <script> before the </head> closing tag.\n',
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
                      'JavaScript in the <body>\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'In the example, <script> is inside the <body> element.\n\nIt is recommended to put the <script> before the </body> closing tag.\n',
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
                      'Should you put your <script> inside the <head> or the <body> ?\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      'What\'s the difference?\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'When the <script> is inside the <head>, it loads first before the content of the page.\n\nWhen it\'s inside the <body>, it loads after the content of the page(HTML elements) loads.\n\nIn this example, when the button is clicked the content of the <p> wlwment changes.\n\n However, this would not work because the event listener loaded first before the HTML element.\n\nFor now, you can ignore how event listener works. Just focus on the placement of the script.\n',
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
                      'If we put the <script> before the </body> closing tag.\n\nEverything should work, because the HTML element loads first before the event listener.\n',
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
                    Text(
                      'It is recommended to put the <script> tag in the body when using the internal JavaScript.\n\nWe will put our example codes in the body for most of the examples throughout the course\n',
                      style: mySmallTextStyle(),
                    ),
                    Icon(Icons.lightbulb),
                    Text(
                      'You will learn about event listeners in our JS Events Lesson.For now, you can ignore them.\n',
                      style: tipTextStyle(),
                    ),
                    Text(
                      'External JavaScript\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'JavaScript can also be places in external files.\n\nJavaScript files have the file name extention of .js e.g. script.js.\n\nJavaScript files is beneficial when multiple web pages use the same script.\n\nIt also organizes codes and help maintain readability as JavaScript is seperated from HTML.\n\nHere is an example:-\n',
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
                          files: files5,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'The script.js file contains the following code:\n',
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
                          files: files6,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'As you may notice, we have put the external script in the <head>.\n\nHowever, external JavaScript files can be placed in the same spots as with internal JavaScript.\n',
                      style: mySmallTextStyle(),
                    ),
                    Icon(Icons.lightbulb),
                    Text(
                      'External and internal scripts behave the same way.\n',
                      style: tipTextStyle(),
                    ),
                    Text(
                      'In our example above, the external script is located in the same folder as the current HTML document.\n\nWe can also put it on other locations.\n\nIn this example the external script is located inside the \'js\' folder\n\nThe \'js\' folder is located in the same folder as the current HTML page.\n',
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
                          files: files7,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'In this example the external script is located inside the \'js\' folder\n\nThe \'js\' folder is located in the root directory of http://www.example.com.\n',
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
                          files: files8,
                          styleOptions: new EditorModelStyleOptions(
                            fontSize: 16,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Icon(Icons.lightbulb),
                    Text(
                      'The value of the \'src\' attribute is called filepath.\n',
                      style: tipTextStyle(),
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
                        return ThirdQuiz();
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
      name: "script.js",
      language: "js",
      code: "<script>\n       document.write(\"Hello World!\");\n</script>",
    ),
  ];
  List<FileEditor> files1 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n    <head>\n     <title> Try It Yourself </title>\n\n      <script type=\"text/javascript\">\n           function myFunc() {\n             document.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n         }\n      </script>\n     </head>\n    <body>\n        <p id=\"demo\"> Hello World! </p>\n       <button type=\"button\" onclick=\"myFunc()\"> Change Value </button>\n      </body>\n</html>",
    ),
  ];
  List<FileEditor> files2 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<!DOCTYPE html>\n<html>\n<head>\n   <title> Try It Yourself </title>\n</head>\n<body>\n   <p id=\"demo\"> Hello World! </p>\n   <button type=\"button\" onclick=\"myFunc()\"> Change Value </button>\n   <script type=\"text/javascript\">\n      function myFunc() {\n         document.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n      }\n   </script>\n</body>\n</html>",
    ),
  ];
  List<FileEditor> files3 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<!DOCTYPE html>\n<html>\n<head>\n   <title> Try It Yourself </title>\n   <script type=\"text/javascript\">\n      document.getElementById(\"btn\").addEventListener(\"click\", function() {\n         document.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n      });\n   </script>\n</head>\n<body>\n   <p> This would not work because the event listener loaded first before the HTML element. </p>\n   <p id=\"demo\"> Hello World! </p>\n   <button id=\"btn\"> Change Value </button>\n</body>\n</html>",
    ),
  ];
  List<FileEditor> files4 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n<head>\n   <title> Try It Yourself </title>\n</head>\n<body>\n   <p id=\"demo\"> Hello World! </p>\n   <button id=\"btn\"> Change Value </button>\n   <script type=\"text/javascript\">\n      document.getElementById(\"btn\").addEventListener(\"click\", function() {\n         document.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n      });\n   </script>\n</body>\n</html>",
    ),
  ];
  List<FileEditor> files5 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<html>\n<head>\n   <title> Try It Yourself </title>\n   <script src=\"script.js\"></script>\n</head>\n<body>\n   <p id=\"demo\"> Hello World! </p>\n   <button type=\"button\" onclick=\"myFunc()\"> Change Value </button>\n</body>\n</html>",
    ),
  ];
  List<FileEditor> files6 = [
    new FileEditor(
      name: "script.js",
      language: "js",
      code:
          "function myFunc(){\ndocument.getElementById(\"demo\").innerHTML = \"Hello Everyone!\";\n}",
    ),
  ];
  List<FileEditor> files7 = [
    new FileEditor(
      name: "script.js",
      language: "js",
      code: "<script src=\"js/script.js\"></script>",
    ),
  ];
  List<FileEditor> files8 = [
    new FileEditor(
      name: "script.js",
      language: "js",
      code: "<script src=\"http://www.example.com/js/script.js\"></script>",
    ),
  ];
}
