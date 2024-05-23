import 'package:bmi_calc/pages/home_page.dart';
import 'package:bmi_calc/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const BMICalc());
}

class BMICalc extends StatelessWidget {
  const BMICalc({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: MyTheme.dark,
    );
  }
}
