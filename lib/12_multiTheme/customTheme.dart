import 'package:flutter/material.dart';

class CustomTheme {
  static const double _titleFontSize = 20;
  static final ThemeData lightTheme = ThemeData(
    primaryColor: Colors.purple[100],
    primaryTextTheme: const TextTheme(
      subtitle1: TextStyle(color: Colors.yellow, fontSize: _titleFontSize),
    ),
  );

  static final ThemeData dartTheme = ThemeData(
    primaryColor: Colors.purple[100],
    primaryTextTheme: const TextTheme(
      subtitle1: TextStyle(color: Colors.grey, fontSize: _titleFontSize),
    ),
  );
}
