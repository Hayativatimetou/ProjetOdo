import 'package:flutter/material.dart';
import 'package:startup/config.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final String category;
  final double rating;

  const ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.category,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      color: Colors.white,
      child: Stack(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: height10px(context) * 0.8),
                      Text('$category', style: TextStyle(color: Colors.black)),
                      SizedBox(height: height10px(context) * 0.8),
                      Text(name,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold)),
                      SizedBox(height: height10px(context) * 2),
                      Row(
                        children: [
                          Text('$price\MRU',
                              style: TextStyle(color: Colors.black)),
                          SizedBox(
                              width: width10px(context) *
                                  2), // Espacement entre le texte du prix et les icônes d'étoiles
                          Row(
                            children: List.generate(
                              5,
                              (index) => Icon(
                                Icons.star,
                                color: index < rating.ceil()
                                    ? Colors.amber
                                    : Colors.grey,
                                size: 16,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Text('(10)'),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 10),
              Stack(
                alignment: Alignment
                    .bottomRight, // Alignement de l'icône shopping en bas à droite
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(6.0),
                    child: Image.asset(
                      imageUrl,
                      width: 125,
                      height: 125,
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.shopping_bag, color: Colors.blue),
                    onPressed: () {
                      print('Ajouter au panier');
                    },
                  ),
                ],
              ),
            ],
          ),
          Positioned(
            top: 1,
            right: 6,
            child: IconButton(
              icon: Icon(Icons.close),
              onPressed: () {
                print('Fermer');
              },
            ),
          ),
        ],
      ),
    );
  }
}
