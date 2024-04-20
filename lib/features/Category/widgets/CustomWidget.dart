import 'package:flutter/material.dart';
import 'package:startup/features/Category/screens/reviews.dart';

class CustomWidget extends StatelessWidget {
  const CustomWidget({
    Key? key,
    required this.imagePath,
    required this.title,
    required this.currentPrice,
    required this.previousPrice,
    required this.rating,
    required this.numReviews,
    this.showNew = true,
    this.cardColor = Colors.white,
    this.showFavorite = true,
    this.favorite =
        Icons.favorite, // Ajout de la valeur par défaut pour favorite
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String currentPrice;
  final String previousPrice;
  final double rating;
  final int numReviews;
  final bool showNew;
  final bool
      showFavorite; // Nouvelle propriété pour contrôler l'affichage de l'icône "favorite"
  final Color cardColor;
  final IconData favorite;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Card(
          elevation: 3.0,
          color: cardColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
            side: BorderSide.none,
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                if (showFavorite) // Afficher l'icône "favorite" si showFavorite est vrai
                  Container(
                    width: 30, // Taille du cercle
                    height: 30, // Taille du cercle
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white, // Couleur du cercle
                    ),
                    child: Center(
                      child: Icon(
                        favorite, // Utilisation de la propriété favorite pour l'icône
                        color: Colors.red, // Couleur de l'icône
                        size: 18, // Taille de l'icône
                      ),
                    ),
                  ),
                Container(
                  width: 100,
                  height: 100,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                if (showNew)
                  Container(
                    width: 60,
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Colors.green,
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text(
                        'New',
                        style: TextStyle(
                          fontSize: 12,
                          color: Colors.black,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6),
                        ),
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  currentPrice,
                  style: const TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  previousPrice,
                  style: const TextStyle(
                    fontSize: 14.0,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                const SizedBox(height: 10.0),
                Row(
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => reviews(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.star,
                        color: Colors.yellow,
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Text('$rating($numReviews)'),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
