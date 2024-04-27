import 'package:flutter/material.dart';
import 'package:startup/config.dart';
import 'package:startup/features/favorites/widgets/productcard.dart';

class FavoriteScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0; // Initialize _selectedIndex with an initial value

    void _onItemTapped(int index) {
      // Define what should happen when an item is tapped
    }
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 227, 223, 223),
      appBar: AppBar(),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text('Favoris',
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Icon(Icons.filter_list),
                  SizedBox(width: width10px(context) * 0.5),
                  Text('filters'),
                  SizedBox(width: width10px(context) * 8),
                  Icon(Icons.compare_arrows),
                  SizedBox(width: width10px(context) * 0.3),
                  Text('Prix du plus bas au plus élevé'),
                  SizedBox(width: width10px(context) * 0.5),
                  Icon(Icons.list),
                ],
              ),
            ],
          ),
          SizedBox(height: height10px(context) * 1.6),
          ProductCard(
            category: 'Category 1',
            // SizedBox(height: 5,),
            name: 'Product 1',
            price: 320.0,

            rating: 4.5,
            imageUrl: 'assets/images/imagef.jpg',
          ),
          SizedBox(height: height10px(context) * 1.6),
          ProductCard(
            name: 'Product 2',
            price: 320.0,
            category: 'Category 1',
            rating: 4.8,
            imageUrl: 'assets/images/imagef.jpg',
          ),
          SizedBox(height: height10px(context) * 1.6),
          ProductCard(
            name: 'Product 3',
            price: 320.0,
            category: 'Category 1',
            rating: 4.3,
            imageUrl: 'assets/images/imagef.jpg',
          ),
          SizedBox(height: height10px(context) * 1.6),
          ProductCard(
            name: 'Product 3',
            price: 320.0,
            category: 'Category 1',
            rating: 4.3,
            imageUrl: 'assets/images/imagef.jpg',
          )
        ],
      ),
    );
  }
}
