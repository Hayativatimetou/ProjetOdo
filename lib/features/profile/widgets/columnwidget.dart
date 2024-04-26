import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  final String icon;
  final String title;
  final String subtitle;

  const ColumnWidget({Key? key, required this.icon, required this.title, required this.subtitle}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(icon, width: 50.0, height: 50.0),
        Text(title),
        Text(subtitle),
      ],
    );
  }
}
