import 'package:bmi_calc/constants/constants.dart';
import 'package:flutter/material.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.all(15.0),
        decoration: const BoxDecoration(
          color: kBottomContainerColor,
          borderRadius: BorderRadius.all(
            Radius.circular(8.0),
          ),
        ),
        width: double.infinity,
        height: kBottomContainerHeight,
        child: Text(
          'Calculate Your BMI'.toUpperCase(),
          style: kBottomTextStyles,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
