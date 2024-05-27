import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class IconColumn extends StatelessWidget {
  const IconColumn({
    super.key,
    required this.text,
    required this.icon,
  });

  final IconData icon;
  final String text;

  final cardTextColor = const Color(0xFF8D8E98);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 80,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
