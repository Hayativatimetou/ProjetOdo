import 'package:flutter/material.dart';
import 'package:startup/config.dart';

import 'package:startup/features/profile/screens/commandes.dart';

import 'package:startup/features/profile/screens/detailcommande.dart';
import 'package:startup/features/profile/screens/parametres.dart';
import 'package:startup/features/profile/widgets/columnwidget.dart';

void main() => runApp(MyAppp());

class MyAppp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0; // Initialize _selectedIndex with an initial value
    void _onItemTapped(int index) {
      // Define what should happen when an item is tapped
    }

    return MaterialApp(
      title: 'User Profile',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: UserProfile(),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ProfileContainer(),
          SizedBox(height: height10px(context) * 1),
          Expanded(
            child: ColumnContainer(),
          ),
        ],
      ),
    );
  }
}

class ProfileContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(8.0),
      child: Row(
        children: [
          CircleAvatar(
            radius: 40.0,
            backgroundImage: AssetImage('assets/images/profile.jpeg'),
          ),
          SizedBox(width: width10px(context) * 2),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Meime Doctorat',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
              ),
              Text(
                '33 33 06 38',
                style: TextStyle(fontSize: 16.0, color: Colors.grey),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ColumnContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.account_circle,
            title: 'Mes Commandes',
            subtitle: 'Vous avez deja 12 commandes',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => OrdersScreen()),
              );
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.shopping_cart,
            title: 'Adresse de livraison',
            subtitle: '3 adresses',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.stars,
            title: 'Mes Avis',
            subtitle: 'Avis pour 4 articles',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.money_off_csred_sharp,
            title: 'Methodes de paiment',
            subtitle: 'Bankily 33********',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Detail()),
              );
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.settings,
            title: 'Parametres',
            subtitle: 'Notifications,mot de passe',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SettingsPage()),
              );
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CircleIcon(
            icon: Icons.logout,
            title: 'Log Out',
            subtitle: 'Further secure your account for safety',
            onTap: () {
              // Navigate to another page here
            },
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
        ],
      ),
    );
  }
}

class CircleIcon extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;
  final VoidCallback onTap; // Callback function to handle onTap event

  const CircleIcon(
      {Key? key,
      required this.icon,
      required this.title,
      required this.subtitle,
      required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap, // Call onTap callback when the icon is tapped
      child: Row(
        mainAxisAlignment:
            MainAxisAlignment.spaceBetween, // Align items to the space between
        children: [
          Row(
            children: [
              Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(
                      238, 231, 241, 248), // Set circle color to white
                ),
                child: Icon(
                  icon,
                  size: 30.0,
                  color: Color.fromARGB(
                      255, 171, 217, 255), // Set icon color to light blue
                ),
              ),
              SizedBox(width: width10px(context) * 1),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(subtitle),
                ],
              ),
            ],
          ),
          Icon(
            Icons.chevron_right, // Add the chevron_right icon here
            size: 30.0,
            color: Colors.grey, // Adjust the color as needed
          ),
        ],
      ),
    );
  }
}
