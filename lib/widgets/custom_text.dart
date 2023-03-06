import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontsize;
  final FontWeight fontWeight;
  final Color color;

  const CustomText(
      {super.key,
      required this.text,
      required this.color,
      required this.fontWeight,
      required this.fontsize});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(fontSize: fontsize, color: color, fontWeight: fontWeight),
    );
  }
}
