import 'package:flutter/material.dart';
import 'package:startup/config.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final double width;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  const CustomButton({
    required this.text,
    required this.onPressed,
    this.width = double.infinity,
    required this.backgroundColor,
    required this.textColor,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(
              fontSize: fontSize10(context) * 1.6,
              color: textColor,
            ),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100),
            ),
            elevation: 0,
          ),
        ),
      ),
    );
  }
}
