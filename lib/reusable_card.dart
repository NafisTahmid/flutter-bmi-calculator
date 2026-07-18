import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  final Color colour;
  final Widget? cardChild;
  final VoidCallback? pressed;
  const ReusableCard({
    super.key,
    required this.colour,
    this.cardChild,
    this.pressed,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          // color: Color(0xFF1D1E33),
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}
