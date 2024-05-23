import 'package:flutter/material.dart';

class MyTheme {
  static const bgColor = 0xFF0A0E21;

  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(bgColor),
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(bgColor),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
    ),
  );
}
