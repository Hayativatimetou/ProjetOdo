import 'package:flutter/material.dart';
import 'package:startup/config.dart';

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
      elevation: 1,
      child: Container(
        height: 90, // Réduction de la hauteur de la carte
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
                      style:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 4),
                    Text(
                      '$category',
                      style: TextStyle(color: Colors.black, fontSize: 12),
                    ),
                    SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          'Unite: $unite',
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                        SizedBox(width: 8),
                        Text(
                          '$price MRU',
                          style: TextStyle(color: Colors.black, fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(width: 8),
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                imageUrl,
                width: 60, // Réduction de la largeur de l'image
                height: 60, // Réduction de la hauteur de l'image
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
