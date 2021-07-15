import 'package:code_editor/code_editor.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';
import '../../drawer.dart';

class JavaScriptDisplayingOutput extends StatefulWidget {
  @override
  _JavaScriptDisplayingOutputState createState() =>
      _JavaScriptDisplayingOutputState();
}

class _JavaScriptDisplayingOutputState
    extends State<JavaScriptDisplayingOutput> {
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
        title: Text('JS Displaying Output'),
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
                      'JavaScript Displaying Output\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'Displaying or generating output in JavaScript is very important especially when learning the language.\n\nFor example, if you want to see if your JavaScript statements or code blocks are correct, you can output data to check.\n\nIn JavaScript, there are 4 ways of display output:\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      '1.Using Console\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'By using the console.log() function we can write into the browser\'s developer console.\n',
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
                            fontSize: 20,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
                    ),
                    Text(
                      'However, the output of console.log() cannot be seen on mobile devices because the developer console is only available on desktop browsers like Chrome and Firefox.\n',
                      style: mySmallTextStyle(),
                    ),
                    Text(
                      '2.Using Dialog Boxes\n',
                      style: headingTextStyle(),
                    ),
                    Text(
                      'By using the alert() function, we can output data on a dialog box\n',
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
                            fontSize: 20,
                            editorToolButtonTextColor: Color(0xff2E3152),
                          ),
                        ),
                      ),
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
          "<!DOCTYPE html>\n<html>\n<head>\n   <title> Try It Yourself </title>\n</head>\n<body>\n   \n\n   <script>\n      var x = 5;\n      var y = 5;\n      var sum = x + y; // adds x and y\n                          \n      console.log(sum); // prints 10\n   </script>\n</body>\n</html>",
    ),
  ];
  List<FileEditor> files1 = [
    new FileEditor(
      name: "Example.html",
      language: "HTML",
      code:
          "<!DOCTYPE html>\n<html>\n<head>\n   <title> Try It Yourself </title>\n</head>\n<body>\n   <button type=\"button\" onclick=\"myFunc()\"> Show Dialog Box </button>\n\n   <script>\n      function myFunc() {\n         var x = 5;\n         var y = 5;\n         var sum = x + y; // adds x and y\n      \n         alert(sum); // shows 10\n      }\n   </script>\n</body>\n</html>",
    ),
  ];
}
