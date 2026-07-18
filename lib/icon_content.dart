import 'package:flutter/material.dart';

const textLabelStyle = const TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

class IconContent extends StatelessWidget {
  final IconData icon;
  final String text;

  const IconContent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, size: 80.0, color: Colors.white),
        const SizedBox(height: 15.0),
        Text(text, style: textLabelStyle),
      ],
    );
  }
}
