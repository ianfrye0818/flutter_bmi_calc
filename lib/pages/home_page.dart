import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const bottomContainerHeight = 80.0;
  static const activeCardColor = Color(0xFF1D1E33);
  static const bottomContainerColor = Color(0xFFEB1555);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("M Y  A P P B A R"),
      ),
      body: Column(
        children: [
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          const Expanded(
            child: ReusableCard(
              bgColor: activeCardColor,
            ),
          ),
          const Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    bgColor: activeCardColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    bgColor: activeCardColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: const BoxDecoration(
              color: bottomContainerColor,
            ),
            width: double.infinity,
            height: bottomContainerHeight,
          ),
        ],
      ),
    );
  }
}
