import 'package:flutter/material.dart';

import '../constants.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const CustomButton({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        color: Color(0xFFEB1555),
        child: Center(
          child: Text(textAlign: TextAlign.center, text, style: kButtonText),
        ),
        margin: EdgeInsets.only(top: 5.0),
        height: 95.0,
        width: double.infinity,
      ),
    );
  }
}
