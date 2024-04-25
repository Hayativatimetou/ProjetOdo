import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:startup/config.dart';

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
    double iconSize = height10px(context) * 5; // Taille des icônes

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        _buildIconContainer(
          icon: twitterIcon,
          color: Colors.blue,
          iconSize: iconSize,
          context: context,
        ),
        SizedBox(width: width10px(context) * 1.5),
        _buildIconContainer(
          icon: facebookIcon,
          color: Colors.blue,
          iconSize: iconSize,
          context: context,
        ),
        SizedBox(width: width10px(context) * 1.5),
        _buildIconContainer(
          icon: appleIcon,
          color: Colors.black,
          iconSize: iconSize,
          context: context,
        ),
      ],
    );
  }

  Widget _buildIconContainer({
    required IconData icon,
    required Color color,
    required double iconSize,
    required BuildContext context,
  }) {
    return Container(
      width: iconSize * 1.5, // Largeur du conteneur
      height: iconSize * 1.5, // Hauteur du conteneur
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5), // Couleur grise de l'ombre
            spreadRadius: 2, // Rayon de diffusion de l'ombre
            blurRadius: 3, // Rayon de flou de l'ombre
            offset: Offset(0, 3), // Position de l'ombre par rapport à l'élément
          ),
        ],
      ),
      child: Center(
        child: Container(
          width: iconSize, // Largeur de l'icône
          height: iconSize, // Hauteur de l'icône
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(
            child: Icon(
              icon,
              color: color,
              size: iconSize * 0.7, // Taille de l'icône
            ),
          ),
        ),
      ),
    );
  }
}
