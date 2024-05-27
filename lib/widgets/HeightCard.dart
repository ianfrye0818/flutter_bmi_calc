import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';

class HeightCard extends StatelessWidget {
  const HeightCard({super.key, required this.height, required this.onChange});

  final double height;
  final ValueChanged<double> onChange;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        bgColor: kActiveCardColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Height',
              style: kLabelTextStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: [
                Text(
                  height.toStringAsFixed(0),
                  style: kNumberTextStyle,
                ),
                const SizedBox(width: 5.0),
                const Text(
                  'inches',
                  style: kLabelTextStyle,
                ),
              ],
            ),
            Slider(
                value: height,
                max: kMaxHeight,
                min: kMinHeight,
                onChanged: (double value) {
                  onChange(value);
                }),
          ],
        ),
      ),
    );
  }
}
