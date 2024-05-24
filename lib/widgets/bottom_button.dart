import 'package:flutter/cupertino.dart';

class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  static const  bottomContainerHeight = 70.0;
  static const bottomContainerColor = Color(0xFFEB1555);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: const BoxDecoration(
        color: bottomContainerColor,
        borderRadius: BorderRadius.all(
          Radius.circular(8.0),
        ),
      ),
      width: double.infinity,
      height: bottomContainerHeight,
    );
  }
}