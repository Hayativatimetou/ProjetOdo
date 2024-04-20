import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final IconData home;
  final IconData categories;
  final IconData favorite;
  final IconData cart;
  final IconData profile;
  final ValueChanged<int>? onTap; // Nouvelle propriété onTap

  const CustomBottomNavigationBar({
    required this.home,
    required this.categories,
    required this.favorite,
    required this.cart,
    required this.profile,
    this.onTap, // Permet la prise en charge de onTap facultatif
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(categories),
          label: 'Categories',
        ),
        BottomNavigationBarItem(
          icon: Icon(favorite),
          label: 'Favorite',
        ),
        BottomNavigationBarItem(
          icon: Icon(cart),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(profile),
          label: 'Profile',
        ),
      ],
      selectedItemColor: Colors.blue,
      onTap: onTap, // Utilise onTap ici
    );
  }
}
