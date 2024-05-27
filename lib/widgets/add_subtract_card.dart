import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class AddSubtractSelectorCard extends StatelessWidget {
  const AddSubtractSelectorCard(
      {super.key,
      required this.value,
      required this.title,
      required this.onAdd,
      required this.onSubtract});

  final VoidCallback onAdd;
  final VoidCallback onSubtract;
  final double value;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        bgColor: kActiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              title,
              style: kLabelTextStyle,
            ),
            Text(
              value.toStringAsFixed(0),
              style: kNumberTextStyle,
            ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              FloatingActionButton(
                onPressed: onSubtract,
                child: const Icon(Icons.remove),
              ),
              FloatingActionButton(
                onPressed: onAdd,
                child: const Icon(Icons.add),
              ),
            ]),
          ],
        ),
      ),
    );
  }
}
