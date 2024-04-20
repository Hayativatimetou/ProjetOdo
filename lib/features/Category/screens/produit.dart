import 'package:flutter/material.dart';
import 'package:startup/features/Category/widgets/CustAppbar.dart';
import 'package:startup/features/Category/screens/Details.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/features/Category/widgets/CustomWidget.dart';

class produit extends StatefulWidget {
  const produit({Key? key}) : super(key: key);

  @override
  State<produit> createState() => _produitState();
}

class _produitState extends State<produit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: custAppbar(
        title: 'Produit',
        chevronLeftCallback: () {},
        searchCallback: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButton.icon(
                      onPressed: () {
                        // Logique du bouton de recherche
                      },
                      icon: Icon(Icons.search),
                      label: Text('Search Candles'),
                      style: ElevatedButton.styleFrom(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: 20.0),
                              Container(
                                child: Center(
                                  child: Container(
                                    width: 100,
                                    height: 4,
                                    color: Colors.black,
                                  ),
                                ),
                                margin: EdgeInsets.only(bottom: 16.0),
                              ),
                              Container(
                                child: Center(
                                  child: Text(
                                    "Trier par",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Apple Populaire',
                                    style: TextStyle(fontSize: 14.0)),
                              ),
                              SizedBox(height: 30.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Plus Récent',
                                    style: TextStyle(fontSize: 14.0)),
                              ),
                              SizedBox(height: 30.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Avis des Clients',
                                    style: TextStyle(fontSize: 14.0)),
                              ),
                              SizedBox(height: 30.0),
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Details(),
                                    ),
                                  );
                                },
                                child: Container(
                                  color: Colors.blue,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Prix: du plus bas au plus élevé',
                                    style: TextStyle(
                                      fontSize: 14.0,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: 30.0),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Prix: du plus élevé au plus bas',
                                    style: TextStyle(fontSize: 14.0)),
                              ),
                              SizedBox(height: 30.0),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(Icons.menu),
                ),
                IconButton(
                  onPressed: () {
                    // Logique de l'icône de notification
                  },
                  icon: Icon(Icons.notifications),
                ),
              ],
            ),
            SizedBox(height: 10),
            IntrinsicHeight(
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0), // Ajuster la marge gauche
                      child: CustomWidget(
                        imagePath: 'assets/images/image1.png',
                        title: 'Lorem',
                        currentPrice: '300.00Mru',
                        previousPrice: '500.00Mru',
                        rating: 4.9,
                        numReviews: 256,
                        showFavorite: false,
                        // cardColor: Colors.white,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 4.0), // Ajuster la marge gauche
                      child: CustomWidget(
                        imagePath: 'assets/images/image1.png',
                        title: 'Lorem',
                        currentPrice: '300.00Mru',
                        previousPrice: '500.00Mru',
                        rating: 4.9,
                        numReviews: 256,
                        showNew: false,
                        cardColor: Colors.white,
                        showFavorite: false,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: CustomWidget(
                    imagePath: 'assets/images/image4.jpg',
                    title: 'Lorem',
                    currentPrice: '300.00Mru',
                    previousPrice: '500.00Mru',
                    rating: 4.9,
                    numReviews: 256,
                    showNew: false,
                    showFavorite: false,
                  ),
                ),
                Expanded(
                  child: CustomWidget(
                    imagePath: 'assets/images/image2.jpg',
                    title: 'Lorem',
                    currentPrice: '300.00Mru',
                    previousPrice: '500.00Mru',
                    rating: 4.8,
                    numReviews: 128,
                    showNew: false,
                    showFavorite: false,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavigationBar(
        home: Icons.home,
        categories: Icons.category,
        favorite: Icons.favorite,
        cart: Icons.shopping_cart,
        profile: Icons.person,
      ),
    );
  }
}
