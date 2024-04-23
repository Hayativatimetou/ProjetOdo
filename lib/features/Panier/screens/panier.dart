import 'package:flutter/material.dart';
import 'package:startup/features/Panier/screens/Pan.dart';
import 'package:startup/features/Panier/widgets/CustomButton.dart';

class panier extends StatefulWidget {
  const panier({Key? key}) : super(key: key);

  @override
  State<panier> createState() => _panierState();
}

class _panierState extends State<panier> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Panier',
                style: TextStyle(
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              // child: Padding(
              //  padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 112,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                  // Ajouter au favoris
                                } else if (value == "remove") {
                                  // Supprimer de la liste
                                }
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 65.0,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '-', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '+', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    // Ajout d'un espaceur pour pousser l'image à droite
                  ),
                ],
              ),
            ),
          ),
          //),
          SizedBox(
            height: 5,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              // child: Padding(
              //  padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 112,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                  // Ajouter au favoris
                                } else if (value == "remove") {
                                  // Supprimer de la liste
                                }
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 65.0,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '-', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '+', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    // Ajout d'un espaceur pour pousser l'image à droite
                  ),
                ],
              ),
            ),
          ),
          //),
          SizedBox(
            height: 5,
          ),
          // ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              // child: Padding(
              //  padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: 100,
                    height: 100,
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 112,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                  // Ajouter au favoris
                                } else if (value == "remove") {
                                  // Supprimer de la liste
                                }
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: 30),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(
                              width: 65.0,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '-', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              '1',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Container(
                              width: 30, // Taille du cercle
                              height: 30, // Taille du cercle
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color:
                                    Colors.grey.shade100, // Couleur du cercle
                              ),
                              child: Center(
                                child: Text(
                                  '+', // Texte à afficher
                                  style: TextStyle(
                                    fontSize: 24, // Taille de la police
                                    color: Colors.grey, // Couleur du texte
                                  ),
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    // Ajout d'un espaceur pour pousser l'image à droite
                  ),
                ],
              ),
            ),
          ),
          //),
          SizedBox(
            height: 5,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 1.0,
              child: ListTile(
                title: Row(
                  children: [
                    Expanded(
                      child: Text('Entrer votre code promo'), // Texte
                    ),
                  ],
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: Icon(
                    Icons.arrow_forward,
                    color: Colors.white,
                  ), // Icône de flèche de gauche à droite
                ),
              ),
            ),
          ),

          SizedBox(
            height: 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Montant Total : ',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 160,
              ),
              Text(
                '1240 MRU',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          CustomButton(
            text: 'Acceder au paiement ',
            color: Colors.blue,
            //width: 200, // Largeur personnalisée de 200
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pan()),
              );
            },
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Pour afficher tous les 5 icônes
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        //currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
      ),
    );
  }
}
