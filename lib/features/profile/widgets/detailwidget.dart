import 'package:flutter/material.dart';
import 'package:startup/config.dart';

class ProductCard extends StatelessWidget {
  final String imageUrl;
  final String name;
  final double price;
  final String category;
  final int orderNumber;
  final String date;
  final int productCount;

  const ProductCard({
    required this.imageUrl,
    required this.name,
    required this.price,
    required this.category,
    required this.orderNumber,
    required this.date,
    required this.productCount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Afficher le numéro de commande et la date en haut du widget
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Commande N°: $orderNumber',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(height: height10px(context) * 1,),
                Text('$date'),
              ],
            ),
          ),
          // Afficher le nombre de produits juste au-dessus de la première carte
          if (productCount > 0)
            Padding(
              padding: const EdgeInsets.all(8),
              child: Text(
                'Nombre de produits: $productCount',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          // Contenu principal du produit
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('$category', style: TextStyle(color: Colors.grey)),
                    SizedBox(height: height10px(context) * 1,),
                    Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    SizedBox(height: height10px(context) * 1),
                    Text('\MRU$price', style: TextStyle(fontWeight: FontWeight.bold)),
                  ],
                ),
              ),
              SizedBox(width: width10px(context) * 1),
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  imageUrl,
                  width: 160,
                  height: 160,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
