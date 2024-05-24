import 'package:bmi_calc/widgets/icon_column.dart';
import 'package:bmi_calc/widgets/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/bottom_button.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static const activeCardColor = Color(0xFF1D1E33);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: const SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      bgColor: activeCardColor,
                      child:
                          IconColumn(icon: FontAwesomeIcons.mars, text: 'MALE'),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      bgColor: activeCardColor,
                      child: IconColumn(
                          icon: FontAwesomeIcons.venus, text: 'FEMALE'),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ReusableCard(
                bgColor: activeCardColor,
              ),
            ),
            Expanded(
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
            BottomButton(),
          ],
        ),
      ),
    );
  }
}



