import 'package:bmi_calc/widgets/BMI_alert_dialog.dart';
import 'package:flutter/material.dart';

import '../constants/constants.dart';
import '../widgets/HeightCard.dart';
import '../widgets/add_subtract_card.dart';
import '../widgets/bottom_button.dart';
import '../widgets/expanded_row.dart';
import '../widgets/gender_selector.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double _height = 66;
  Genders _gender = Genders.male;
  double _weight = 150;
  double _age = 25;

  double _calculateBMI() {
    return _weight / (_height * _height) * 703;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("BMI Calculator"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            ExpandedRow(
              children: [
                GenderSelector(
                    gender: Genders.male,
                    onPressed: () => setState(() {
                          _gender = Genders.male;
                        }),
                    isActive: _gender == Genders.male),
                GenderSelector(
                    gender: Genders.female,
                    onPressed: () => setState(() {
                          _gender = Genders.female;
                        }),
                    isActive: _gender == Genders.female),
              ],
            ),
            HeightCard(
              height: _height,
              onChange: (double value) {
                setState(() {
                  _height = value;
                });
              },
            ),
            ExpandedRow(
              children: [
                AddSubtractSelectorCard(
                  value: _weight,
                  title: 'Weight',
                  onAdd: () {
                    setState(() {
                      if (_weight < 500) _weight++;
                    });
                  },
                  onSubtract: () {
                    setState(() {
                      if (_weight > 0) _weight--;
                    });
                  },
                ),
                AddSubtractSelectorCard(
                  value: _age,
                  title: 'Age',
                  onAdd: () {
                    setState(() {
                      if (_age < 100) _age++;
                    });
                  },
                  onSubtract: () {
                    setState(() {
                      if (_age > 1) _age--;
                    });
                  },
                ),
              ],
            ),
            BottomButton(
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return BMIAlertDialog(
                        calculate: _calculateBMI, gender: _gender);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
