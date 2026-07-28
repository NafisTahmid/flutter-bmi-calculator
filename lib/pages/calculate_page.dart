import 'package:bmi_calculator/components/custom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class CalculatePage extends StatelessWidget {
  final String result;
  final String bmiResult;
  final String suggestion;
  const CalculatePage({
    super.key,
    required this.result,
    required this.bmiResult,
    required this.suggestion,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text('BMI Calculator')),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                alignment: Alignment.bottomCenter,
                child: Text('Your Result:', style: kTitleTextStyle),
              ),
            ),
            Expanded(
              flex: 5,
              child: ReusableCard(
                colour: kActiveCardColor,
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(result.toUpperCase(), style: kResultTextStyle),
                    Text(bmiResult, style: kResultTextStyle2),
                    Text(
                      suggestion,
                      style: kResultTextStyle3,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
            CustomButton(
              text: 'RE-CALCULATE',
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
