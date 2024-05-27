import 'package:flutter/material.dart';

import '../constants/constants.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {super.key, required this.icon, required this.onPressed});

  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 0.0,
      constraints: const BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      shape: const CircleBorder(),
      fillColor: kInactiveCardColor,
      child: Icon(icon),
    );
  }
}
