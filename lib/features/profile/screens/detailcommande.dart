import 'package:flutter/material.dart';
import 'package:startup/config.dart';
import 'package:startup/features/favorites/screens/favorite1.dart';

class Detail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0; // Initialize _selectedIndex with an initial value

    void _onItemTapped(int index) {
      // Define what should happen when an item is tapped
    }

    return Scaffold(
      appBar: AppBar(
        title: Text('order details'),
      ),
      body: ListView(
        padding: EdgeInsets.all(4.0),
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Commande N:19147',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('05-03-2024'),
            ],
          ),
          SizedBox(height: height10px(context) * 1),
          Text('Numéro de série: IW347554355'),
          Text(
            '4 Produits',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          ProductCard(
            name: 'Product 1',
            category: 'Category 1',
            price: 320.0,
            unite: 1,
            imageUrl: 'assets/images/canapee.png',
          ),
          SizedBox(height: height10px(context) * 1),
          ProductCard(
            name: 'Product 2',
            price: 320.0,
            category: 'Category 1',
            unite: 1,
            imageUrl: 'assets/images/canapee.png',
          ),
          SizedBox(height: height10px(context) * 1),
          ProductCard(
            name: 'Product 3',
            price: 320.0,
            category: 'Category 1',
            unite: 1,
            imageUrl: 'assets/images/canapee.png',
          ),
          Text(
            'Autres Informations',
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Adresse'),
              Text(
                'TVZ, najah, 2051',
                style: TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Methodes paiment'),
              Text(
                '* *** ****3947',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Promotion:'),
              Text(
                '10%, Personal promo code',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Montant Total:'),
              Text(
                '1330',
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
              height: height10px(context) *
                  2), // Espacement entre les informations et les boutons

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic for "Recommander" button
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.white),
                child: Text(
                  'Recommander',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  // Add your onPressed logic for "Commenter" button
                },
                style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
                child: Text(
                  'Commenter',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final String category;
  final double unite;

  const ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.category,
    required this.unite,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Container(
        height: 120, // Reducing the height of the card
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                          fontSize: 16,
                          fontWeight:
                              FontWeight.bold), // Adjusting the font size
                    ),
                    SizedBox(
                        height: height10px(context) *
                            0.4), // Reducing vertical space between elements
                    Text(
                      '$category',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 12), // Adjusting the font size
                    ),
                    SizedBox(
                        height: height10px(context) *
                            1), // Reducing vertical space between elements
                    Row(
                      children: [
                        Text(
                          'Unite:$unite',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12), // Adjusting the font size
                        ),
                        SizedBox(
                            width: width10px(context) *
                                2), // Reducing horizontal space between elements
                        Text(
                          '$price\MRU',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 12), // Adjusting the font size
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: width10px(context) * 1),
            Stack(
              alignment: Alignment.bottomRight,
              children: [
                ClipRRect(
                  borderRadius:
                      BorderRadius.circular(8.0), // Reducing border radius
                  child: Image.asset(
                    imageUrl,
                    width: 130, // Reducing the width of the image
                    height: 130, // Reducing the height of the image
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
