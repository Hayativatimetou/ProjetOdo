import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double fontSize;
  final FontWeight? fontWeight;
  final Color? color;
  final EdgeInsets padding; // Ajouter un EdgeInsets pour le padding

  const CustomText({
    required this.text,
    required this.fontSize,
    this.fontWeight,
    this.color,
    this.padding = const EdgeInsets.only(left: 8.0),
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style: TextStyle(
          fontSize: fontSize,
          fontWeight: fontWeight,
          color: color,
        ),
      ),
    );
  }
}
