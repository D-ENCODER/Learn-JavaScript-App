import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/pages/home_page/home_page.dart';
import 'package:quiz_app/pages/second_page/second_page.dart';
import 'package:quiz_app/pages/third_page/third_page.dart';
import 'package:quiz_app/screen.dart';

class MyDrawer extends StatefulWidget {
  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    const colour = Color(0xff7ABBDE);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          HeaderDrawer(),
          ListTile(
            title: Text(
              'Home',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return MyCustomWidget();
                    },
                  ),
                );
              });
            },
          ),
          ListTile(
            title: Text(
              'JS Overview',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {
              setState(() {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return FirstPage();
                    },
                  ),
                );
              });
            },
          ),
          ListTile(
            title: Text(
              'JS Introduction',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
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
          ),
          ListTile(
            title: Text(
              'JS Writing Code',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
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
          ),
          ListTile(
            title: Text(
              'JS Displaying Output',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Statements',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Syntax',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Comments',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Variables',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Datatypes',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Operators',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Arithmatic Operators',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Assignment Operators',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Comparision Operators',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Logical & Conditional Operator',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Functions',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Objects',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Strings',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS String Methods',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Numbers',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Number Methods',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Arrays',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Array Methods',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Array Sorting',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Array Iteration',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Events',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Math Object',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Math Random',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Conditional Statements-I',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS Conditional Statements-II',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS For Loop',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS For Of Loop',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'JS While Loop',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {},
          ),
          ListTile(
            title: Text(
              'Close',
              style: TextStyle(
                fontSize: 20,
                color: colour,
              ),
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Center(
            child: AnimatedText(),
          )
        ],
      ),
    );
  }
}

class AnimatedText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colour = Color(0xff7ABBDE);
    return Column(
      children: [
        AnimatedTextKit(
          animatedTexts: [
            TypewriterAnimatedText(
              'Created By\nD-ENCODER',
              textStyle: const TextStyle(
                color: colour,
                fontSize: 32.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
          pause: const Duration(milliseconds: 2000),
          displayFullTextOnTap: true,
          stopPauseOnTap: true,
          repeatForever: true,
        ),
        SizedBox(
          height: 60,
        )
      ],
    );
  }
}

class HeaderDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    const colour = Color(0xff7ABBDE);
    return DrawerHeader(
      child: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              color: colour,
              fontSize: 50.0,
              fontFamily: 'Sourcecode',
            ),
            child: AnimatedTextKit(
              animatedTexts: [
                RotateAnimatedText('Learn'),
                RotateAnimatedText('Note'),
                RotateAnimatedText('Code'),
                RotateAnimatedText('Practice'),
                RotateAnimatedText('Debug'),
                RotateAnimatedText('Projects'),
              ],
              pause: const Duration(milliseconds: 2000),
              displayFullTextOnTap: true,
              stopPauseOnTap: false,
              repeatForever: true,
            ),
          ),
        ),
      ),
      decoration: BoxDecoration(
        color: Colors.black26,
      ),
    );
  }
}
