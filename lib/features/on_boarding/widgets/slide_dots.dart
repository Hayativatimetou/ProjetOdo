import 'package:flutter/material.dart';

import '../../../app_constants.dart';

class SlideDots extends StatelessWidget {
  final bool isActive;
  SlideDots(this.isActive);

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      margin: const EdgeInsets.symmetric(horizontal: 3.3),
      height: 7,
      width: 7,
      decoration: BoxDecoration(
        color: isActive
            ? AppConstants.primaryColor
            : Color.fromRGBO(206, 214, 242, 1),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}
