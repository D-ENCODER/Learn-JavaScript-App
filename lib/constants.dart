import 'package:flutter/material.dart';

TextStyle myMediumTextStyle() {
  return TextStyle(
    color: Colors.white.withOpacity(1),
    fontSize: 18,
    fontWeight: FontWeight.w500,
  );
}

TextStyle headingTextStyle() {
  return TextStyle(
    color: Colors.white.withOpacity(1),
    fontSize: 25,
    decoration: TextDecoration.underline,
    fontWeight: FontWeight.w900,
  );
}

BoxShadow myBoxShadow() {
  return BoxShadow(
    color: Color(0xff000000).withOpacity(0.7),
    blurRadius: 25,
    offset: Offset(5, 10),
  );
}

TextStyle tipTextStyle() {
  return TextStyle(
    color: Colors.orange.withOpacity(1),
    backgroundColor: Color(0xff515151),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

TextStyle screenTextStyle() {
  return TextStyle(
    color: Colors.white,
    fontSize: 22,
    fontWeight: FontWeight.w900,
  );
}

TextStyle mySmallTextStyle() {
  return TextStyle(
    color: Colors.white.withOpacity(1),
    fontSize: 16,
    fontWeight: FontWeight.w500,
  );
}

TextStyle myBigTextStyle() {
  return TextStyle(
    color: Colors.white.withOpacity(1),
    fontSize: 20,
    fontWeight: FontWeight.w900,
  );
}

final kTitleStyle = TextStyle(
  color: Colors.white,
  fontFamily: 'CM Sans Serif',
  fontSize: 26.0,
  height: 1.5,
);

final kSubtitleStyle = TextStyle(
  color: Colors.white,
  fontSize: 18.0,
  height: 1.2,
);
