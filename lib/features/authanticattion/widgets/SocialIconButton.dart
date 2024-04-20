import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SocialIconButtonRow extends StatelessWidget {
  final IconData twitterIcon;
  final IconData facebookIcon;
  final IconData appleIcon;

  const SocialIconButtonRow({
    required this.twitterIcon,
    required this.facebookIcon,
    required this.appleIcon,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const SizedBox(
          height: 40,
          width: 10,
        ),
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: Center(
              child: Icon(
                twitterIcon,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: Center(
              child: Icon(
                facebookIcon,
                color: Colors.blue,
              ),
            ),
          ),
        ),
        SizedBox(width: 5),
        IconButton(
          onPressed: () {},
          icon: Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey.shade100,
            ),
            child: Center(
              child: Icon(
                appleIcon,
                color: Colors.black,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
