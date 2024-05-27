import 'package:flutter/material.dart';

import '../constants/constants.dart';

class BMIAlertDialog extends StatelessWidget {
  const BMIAlertDialog(
      {super.key, required this.calculate, required this.gender});

  final Function calculate;
  final Genders gender;

  double get BMI => calculate();

  Set<String> get weightText => {
        if (BMI < 18.5) 'You are underweight',
        if (BMI >= 18.5 && BMI < 24.9) 'You are a normal weight',
        if (BMI >= 25 && BMI < 29.9) 'You are overweight',
        if (BMI >= 30) 'You are obese'
      };

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Your BMI'),
      content: Container(
        height: 200,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Your BMI is ${calculate().toStringAsFixed(2)}',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(height: 10),
              Text(weightText.join(', '), style: const TextStyle(fontSize: 18)),
            ]),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: const Text('OK'))
      ],
    );
  }
}
