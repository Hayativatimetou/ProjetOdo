import 'package:flutter/material.dart';
import 'package:startup/config.dart';
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
    this.favorite = Icons.favorite,
  }) : super(key: key);

  final String imagePath;
  final String title;
  final String currentPrice;
  final String previousPrice;
  final double rating;
  final int numReviews;
  final bool showNew;
  final bool showFavorite;
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
                if (showFavorite)
                  Container(
                    width: width10px(context) * 3,
                    height: height10px(context) * 3,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Center(
                      child: Icon(
                        favorite,
                        color: Colors.red,
                        size: 18,
                      ),
                    ),
                  ),
                Container(
                  width: width10px(context) * 12,
                  height: height10px(context) * 12.1,
                  child: Image.asset(
                    imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
                if (showNew)
                  Container(
                    width: width10px(context) * 6,
                    height: height10px(context) * 3,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'New',
                        style: TextStyle(
                          fontSize: fontSize10(context) * 1.2,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        // elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        backgroundColor: Colors.black,
                        padding: EdgeInsets.zero,
                      ),
                    ),
                  ),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.6,
                  ),
                ),
                SizedBox(height: height10px(context) * 0.5),
                Text(
                  currentPrice,
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.8,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: height10px(context) * 0.5),
                Text(
                  previousPrice,
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.4,
                    decoration: TextDecoration.lineThrough,
                  ),
                ),
                SizedBox(height: height10px(context) * 1),
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
                        color: Color.fromARGB(255, 235, 182, 91),
                      ),
                    ),
                    SizedBox(width: width10px(context) * 0.5),
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
