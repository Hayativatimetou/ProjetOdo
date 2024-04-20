import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMorePressed;
  final VoidCallback? onClosePressed;
  final BuildContext? context; // Ajout du contexte

  const CustomAppBar({
    this.onMorePressed,
    this.onClosePressed,
    this.context,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          if (context != null) {
            Navigator.of(context!).pop(); // Retour à l'écran précédent
          }
        },
      ),
      actions: [
        IconButton(
          onPressed: onClosePressed,
          icon: Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade200,
            ),
            child: Center(
              child: Icon(
                Icons.close,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
