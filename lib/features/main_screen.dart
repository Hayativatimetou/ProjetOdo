import 'package:flutter/material.dart';
import 'package:startup/features/Category/screens/categ.dart';
import 'package:startup/features/Category/screens/categories.dart';

import 'package:startup/features/Panier/screens/panier.dart';
import 'package:startup/features/favorites/screens/favorite1.dart';
import 'package:startup/features/profile/screens/userprofile.dart';

class MyHomeScreen extends StatefulWidget {
  const MyHomeScreen({Key? key}) : super(key: key);

  @override
  State<MyHomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<MyHomeScreen> {
  int currentIndex = 0;
  List<Widget> screens = [
    const Categ(),
    const Categories(),
    FavoriteScreen(),
    const panier(),
    UserProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          setState(() {
            currentIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.blue,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Accueil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categorie',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart,
            ),
            label: 'chart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
