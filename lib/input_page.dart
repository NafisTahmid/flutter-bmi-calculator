import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'icon_content.dart';

const Color activeCardColor = Color(0xFF1D1E33);
const Color inactiveCardColor = Color(0xFF111328);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;
  void toggleCard(Gender gender) {
    gender == Gender.male
        ? maleColor == inactiveCardColor
              ? {maleColor = activeCardColor, femaleColor = inactiveCardColor}
              : maleColor = inactiveCardColor
        : femaleColor == inactiveCardColor
        ? {femaleColor = activeCardColor, maleColor = inactiveCardColor}
        : femaleColor = inactiveCardColor;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('BMI Calculator'), centerTitle: true),
      body: Column(
        children: [
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    pressed: () {
                      setState(() {
                        toggleCard(Gender.male);
                      });
                    },
                    colour: maleColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.mars,
                      text: 'MALE',
                    ),
                  ),
                ),

                Expanded(
                  child: ReusableCard(
                    pressed: () {
                      setState(() {
                        toggleCard(Gender.female);
                      });
                    },
                    colour: femaleColor,
                    cardChild: IconContent(
                      icon: FontAwesomeIcons.venus,
                      text: 'FEMALE',
                    ),
                  ),
                ),
              ],
            ),
          ),

          Expanded(child: ReusableCard(colour: Color(0xFF1D1E33))),
          Expanded(
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: ReusableCard(
                    pressed: () {},
                    colour: Color(0xFF1D1E33),
                  ),
                ),

                Expanded(
                  child: ReusableCard(
                    pressed: () {},
                    colour: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
