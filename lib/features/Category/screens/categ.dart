import 'package:flutter/material.dart';
import 'package:startup/features/Category/screens/categories.dart';
import 'package:startup/features/Category/widgets/CustomWidget.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/features/Panier/screens/panier.dart';

class Categ extends StatefulWidget {
  const Categ({Key? key}) : super(key: key);

  @override
  State<Categ> createState() => _CategState();
}

class _CategState extends State<Categ> {
  int _currentImageIndex = 0; // Indice de l'image actuellement affichée

  List<String> appBarImages = [
    'assets/images/image9.jpg',
    'assets/images/image11.jpg',
    'assets/images/image12.jpg',
  ];

  List<Color> _circleColors = [
    Colors.blue, // Couleur du cercle pour image9
    Colors.grey, // Couleur du cercle pour image11
    Colors.grey, // Couleur du cercle pour image12
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      extendBody: true,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Text(
              'Lorem Ipsum',
              style: TextStyle(color: Colors.white, fontSize: 20.0),
            ),
            Text(
              'Get discounts up to 75%  ',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
            Text(
              'for',
              style: TextStyle(color: Colors.white, fontSize: 14.0),
            ),
          ],
        ),
        flexibleSpace: GestureDetector(
          onHorizontalDragEnd: (details) {
            if (details.primaryVelocity! < 0) {
              setState(() {
                // Changement de l'image dans l'appBar lorsque vous faites glisser vers la droite
                _currentImageIndex =
                    (_currentImageIndex + 1) % appBarImages.length;
                // Mettre à jour la couleur du cercle correspondant
                _updateCircleColors();
              });
            }
          },
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(appBarImages[_currentImageIndex]),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(100.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 20),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Shop Now',
                    style: TextStyle(fontSize: 16, color: Colors.blue),
                  ),
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: _circleColors[0], // Couleur du cercle pour image9
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: _circleColors[1], // Couleur du cercle pour image11
                  ),
                  Icon(
                    Icons.circle,
                    size: 10,
                    color: _circleColors[2], // Couleur du cercle pour image12
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Soldes',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Voir Tout',
                  style: TextStyle(color: Colors.blue, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(height: 10),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  String imagePath = '';
                  String title = '';
                  String currentPrice = '';
                  String previousPrice = '';
                  double rating = 0.0;
                  int numReviews = 0;
                  if (index == 0) {
                    imagePath = 'assets/images/image1.png';
                    title = 'Lorem 1';
                    currentPrice = '300.00Mru';
                    previousPrice = '500.00Mru';
                    rating = 4.9;
                    numReviews = 256;
                  } else if (index == 1) {
                    imagePath = 'assets/images/image2.jpg';
                    title = 'Lorem 2';
                    currentPrice = '200.00Mru';
                    previousPrice = '400.00Mru';
                    rating = 4.5;
                    numReviews = 150;
                  } else {
                    imagePath = 'assets/images/image1.png';
                    title = 'Lorem 3';
                    currentPrice = '400.00Mru';
                    previousPrice = '600.00Mru';
                    rating = 4.8;
                    numReviews = 300;
                  }
                  return SizedBox(
                    width: 155,
                    child: CustomWidget(
                      imagePath: imagePath,
                      title: title,
                      currentPrice: currentPrice,
                      previousPrice: previousPrice,
                      rating: rating,
                      numReviews: numReviews,
                      showNew: false,
                    ),
                  );
                },
              ),
            ),
            SizedBox(height: 10),
            Row(
              children: [
                Text(
                  'Nouveau',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Spacer(),
                Text(
                  'Voir Tout',
                  style: TextStyle(color: Colors.blue, fontSize: 16.0),
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Tu ne las jamais vu auparavanr !',
              style: TextStyle(fontSize: 12.0, color: Colors.grey),
            ),
            Container(
              height: 300,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  String imagePath = '';
                  String title = '';
                  String currentPrice = '';
                  String previousPrice = '';
                  double rating = 0.0;
                  int numReviews = 0;
                  if (index == 0) {
                    imagePath = 'assets/images/image1.png';
                    title = 'Lorem 1';
                    currentPrice = '300.00Mru';
                    previousPrice = '500.00Mru';
                    rating = 4.9;
                    numReviews = 256;
                  } else if (index == 1) {
                    imagePath = 'assets/images/image2.jpg';
                    title = 'Lorem 2';
                    currentPrice = '200.00Mru';
                    previousPrice = '400.00Mru';
                    rating = 4.5;
                    numReviews = 150;
                  } else {
                    imagePath = 'assets/images/image1.png';
                    title = 'Lorem 3';
                    currentPrice = '400.00Mru';
                    previousPrice = '600.00Mru';
                    rating = 4.8;
                    numReviews = 300;
                  }
                  return SizedBox(
                    width: 155,
                    child: CustomWidget(
                      imagePath: imagePath,
                      title: title,
                      currentPrice: currentPrice,
                      previousPrice: previousPrice,
                      rating: rating,
                      numReviews: numReviews,
                      showNew: false,
                    ),
                  );
                },
              ),
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
        onTap: (index) {
          setState(() {
            if (index == 1) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Categories(),
                ),
              );
            } else if (index == 3) {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => panier(),
                ),
              );
            }
          });
        },
      ),
    );
  }

  // Met à jour la couleur des cercles en fonction de l'image actuellement affichée dans l'appBar
  void _updateCircleColors() {
    setState(() {
      for (int i = 0; i < _circleColors.length; i++) {
        _circleColors[i] = i == _currentImageIndex ? Colors.blue : Colors.grey;
      }
    });
  }
}
