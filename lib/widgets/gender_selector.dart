import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants/constants.dart';
import 'icon_column.dart';

class GenderSelector extends StatelessWidget {
  const GenderSelector(
      {super.key,
      required this.gender,
      required this.onPressed,
      required this.isActive});

  final Genders gender;
  final VoidCallback onPressed;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        onPressed: onPressed,
        bgColor: isActive ? kActiveCardColor : kInactiveCardColor,
        child: IconColumn(
            icon: gender == Genders.male
                ? FontAwesomeIcons.mars
                : FontAwesomeIcons.venus,
            text: gender == Genders.male
                ? 'Male'
                : ''
                    'Female'),
      ),
    );
  }
}
