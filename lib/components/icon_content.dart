import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../constants.dart';

class IconContent extends StatelessWidget {
  final FaIconData icon;
  final String text;

  const IconContent({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon, size: 80.0, color: Colors.white),
        const SizedBox(height: 15.0),
        Text(text, style: kTextLabelStyle),
      ],
    );
  }
}
