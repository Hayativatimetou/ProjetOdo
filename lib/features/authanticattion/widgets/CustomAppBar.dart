import 'package:flutter/material.dart';
import 'package:startup/config.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onMorePressed;
  final VoidCallback? onClosePressed;
  final BuildContext? context;

  const CustomAppBar({
    this.onMorePressed,
    this.onClosePressed,
    this.context,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () {
          if (context != null) {
            Navigator.of(context!).pop();
          }
        },
      ),
      actions: [
        IconButton(
          onPressed: onClosePressed,
          icon: Container(
            width: width10px(context) * 4,
            height: height10px(context) * 4,
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
