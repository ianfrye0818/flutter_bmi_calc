import 'package:flutter/material.dart';

import '../constants/constants.dart';

class MyTheme {
  static const bgColor = 0xFF0A0E21;

  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: Color(bgColor),
      foregroundColor: Colors.white,
    ),
    scaffoldBackgroundColor: const Color(bgColor),
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
      backgroundColor: kInactiveCardColor,
      shape: const CircleBorder(),
      iconSize: 30.0,
    ),
    sliderTheme: const SliderThemeData().copyWith(
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 15.0),
      overlayShape: const RoundSliderOverlayShape(overlayRadius: 30.0),
      thumbColor: kThumbColor,
      overlayColor: kOverLayColor,
      activeTrackColor: kActiveTrackColor,
      inactiveTrackColor: kInactiveTrackColor,
    ),
    textTheme: const TextTheme(
      bodyLarge: TextStyle(color: Colors.white),
      titleLarge: TextStyle(color: Colors.white),
      bodyMedium: TextStyle(color: Colors.white),
      labelMedium: TextStyle(color: Color(0xFF8D8E98), fontSize: 18.0),
      displayLarge: TextStyle(
          color: Colors.white, fontSize: 50.0, fontWeight: FontWeight.w900),
    ),
  );
}
