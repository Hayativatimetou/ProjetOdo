import 'package:flutter/material.dart';

class RememberMeCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;

  const RememberMeCheckbox({
    Key? key,
    required this.value,
    this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
      controlAffinity: ListTileControlAffinity.leading,
      title: const Text(
        'Remember me next time',
        style: TextStyle(
          fontSize: 12,
        ),
      ),
      value: value,
      onChanged: onChanged != null
          ? (bool? newValue) {
              if (onChanged != null) {
                onChanged!(newValue!);
              }
            }
          : null,
      activeColor: Colors.blueAccent,
      contentPadding: EdgeInsets.zero,
    );
  }
}
