import 'package:flutter/material.dart';
import 'package:startup/config.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SettingsPage(),
    );
  }
}

class SettingsPage extends StatefulWidget {
  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool notificationsActive = true;

  void toggleNotifications() {
    setState(() {
      notificationsActive = !notificationsActive;
    });
  }

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0; // Initialize _selectedIndex with an initial value

    void _onItemTapped(int index) {
      // Define what should happen when an item is tapped
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('Paramètres'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Informations Personnels',
              style: TextStyle(
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            Text(
              'Nom',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                ),
              ),
            ),
            SizedBox(
              height: height10px(context) * 2,
            ),
            Text(
              'Num tlf',
              style: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: '+222 | 33333333',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height10px(context) * 2,
            ),
            Row(
              children: [
                Text(
                  'Mot de Passe',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                    height: height10px(context) * 0.8,
                    width: width10px(context) * 15),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: InputBorder.none,
                                    labelText: 'Ancien mot de passe',
                                  ),
                                ),
                              ),
                              Text(
                                'Mot de passe oublié ?',
                                style: TextStyle(
                                    fontSize: 13.0, color: Colors.grey),
                              ),
                              SizedBox(
                                height: height10px(context) * 2,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Nouveau mot de passe',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height10px(context) * 2,
                              ),
                              Container(
                                padding: EdgeInsets.symmetric(horizontal: 4.0),
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey),
                                  borderRadius: BorderRadius.circular(8.0),
                                ),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    labelText: 'Confirmer le mot de passe',
                                    border: InputBorder.none,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: height10px(context) * 2,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  // Gérer le clic sur le bouton Enregistrer
                                  Navigator.of(context).pop();
                                },
                                style: ButtonStyle(
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Colors.blue),
                                  padding: MaterialStateProperty.all(
                                    EdgeInsets.symmetric(
                                        vertical: 20.0, horizontal: 150.0),
                                  ),
                                ),
                                child: Text(
                                  'Enregistrer',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Row(
                    children: [
                      Text(
                        'Changer',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            Text(
              'Mot de passe:',
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
            //   Container(
            //         padding: EdgeInsets.symmetric(horizontal: 4.0),
            //         decoration: BoxDecoration(
            //           border: Border.all(color: Colors.grey),
            //           borderRadius: BorderRadius.circular(8.0),
            //         ),
            //   child: TextFormField(
            //     decoration: InputDecoration(
            //       border: InputBorder.none,
            //     ),
            //   ),
            // ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.0),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
                borderRadius: BorderRadius.circular(8.0),
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Smartmss',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      // Add functionality for eye icon here
                    },
                    icon: Icon(Icons.visibility), // Change to eye icon
                    color: Colors.black,
                  ),
                ],
              ),
//               ),
            ),
            SizedBox(
              height: height10px(context) * 2,
            ),
            Text(
              'Notifications',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment
                  .spaceBetween, // Ajuste l'espacement entre les widgets
              children: [
                Text(
                  'Reductions',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    toggleNotifications();
                  },
                  child: Switch(
                    value: notificationsActive,
                    onChanged: (value) {
                      toggleNotifications();
                    },
                    activeColor: Colors.green,
                    inactiveThumbColor: Colors.red,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
