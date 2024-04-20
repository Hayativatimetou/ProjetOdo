import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hint;
  final String? label;
  final IconData? prefix;
  final TextInputType? keyboardtype;
  final TextEditingController? controller;

  CustomTextFormField({
    this.label,
    this.hint,
    this.keyboardtype,
    this.controller,
    this.prefix,
  });

  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isPasswordVisible = false;

  void _togglePasswordVisibility() {
    setState(() {
      _isPasswordVisible = !_isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isPassword = widget.keyboardtype == TextInputType.visiblePassword;

    return TextFormField(
      controller: widget.controller,
      keyboardType: widget.keyboardtype,
      obscureText: isPassword && !_isPasswordVisible,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey), // Couleur du hint en gris
        labelText: widget.label,
        prefixIcon: widget.prefix != null ? Icon(widget.prefix) : null,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: _togglePasswordVisibility,
                icon: Icon(_isPasswordVisible
                    ? Icons.visibility
                    : Icons.visibility_off),
              )
            : null,
      ),
    );
  }
}
