import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  final String? hint;
  final String? label;
  final IconData? prefix;
  final TextInputType? keyboardtype;
  final TextEditingController? controller;
  final Color iconColor;
  final Color iconBorderColor;
  final Key? key;
  final String? Function(String?)? validator; // Ajout du validateur
  const CustomTextFormField({
    this.key,
    this.label,
    this.hint,
    this.keyboardtype,
    this.controller,
    this.prefix,
    required this.iconColor,
    required this.iconBorderColor,
    this.validator, // Utilisation du validateur
  }) : super(key: key);
  @override
  _CustomTextFormFieldState createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool _isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    bool isPassword = widget.keyboardtype == TextInputType.visiblePassword;

    return TextFormField(
      key: widget.key,
      controller: widget.controller,
      keyboardType: widget.keyboardtype,
      obscureText: isPassword && !_isPasswordVisible,
      validator: widget.validator,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: TextStyle(color: Colors.grey),
        labelText: widget.label,
        prefixIcon: widget.prefix != null
            ? Stack(
                alignment: Alignment.center,
                children: [
                  Icon(
                    widget.prefix,
                    size: 30.0,
                    color:
                        Colors.white, // Couleur blanche pour le fond de l'icône
                  ),
                  Icon(
                    widget.prefix,
                    color: Colors
                        .black, // Couleur noire pour les traits de l'icône
                  ),
                ],
              )
            : null,
        suffixIcon: isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
                icon: Icon(
                  _isPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  color:
                      Colors.black, // Couleur noire pour l'icône de visibilité
                ),
              )
            : null,
      ),
    );
  }
}
