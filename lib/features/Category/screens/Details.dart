import 'package:flutter/material.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/features/Category/widgets/CustomWidget.dart';

class Details extends StatefulWidget {
  const Details({Key? key}) : super(key: key);

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        centerTitle: true,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: Icon(Icons.chevron_left, color: Colors.black),
          onPressed: () {
            // Navigator.push(
            //   context,
            //   MaterialPageRoute(
            //     builder: (context) => ScreenUp(),
            //   ),
            // );
          },
        ),
        title: Text(
          'Detail P1',
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.share_rounded, color: Colors.black),
            onPressed: () {
              // Ajoutez ici la logique pour gérer la recherche
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SizedBox(
                    width: 10.0,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/image5.jpg',
                      width: 250, // Diminuer la largeur de l'image 5
                      height: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 10.0),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 5, top: 8.0, bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/image6.png',
                        width: 250,
                        height: 200,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: 5.0),
                  SizedBox(height: 20.0),
                  Text(
                    'Produit 1',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Text(
                    'Lorem',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  ),
                  SizedBox(height: 10.0),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                  Text('(10)'),
                  SizedBox(width: 120.0),
                  Text(
                    '1900MRU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                'Notre mélange offre une combinaison savoureuse de raisins secs, cannebecrges, abricots, amandes, noix de cajou, noisettes et noix de coco,parfait pour une collation saine et energisante a tout moment de la journee ',
              ),
            ),
            const SizedBox(height: 20.0),
            Container(
              height: 100.0,
              color: Colors.white,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 20.0),
                      child: SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Ajouter au panier',
                            style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15.0,
                    ),
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
                  ],
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: Text(
                      'Informations sur la livraison',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  const SizedBox(width: 5.0),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.black),
                    onPressed: () {
                      // Ajoutez ici la logique pour gérer l'action associée à l'icône more
                    },
                  ),
                ],
              ),
            ),
            const Divider(
              height: 1.0,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  const Expanded(
                    child: Text(
                      'Support',
                      style: TextStyle(fontSize: 14.0),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.black),
                    onPressed: () {
                      // Ajoutez ici la logique pour gérer l'action associée à l'icône more
                    },
                  ),
                ],
              ),
            ),
            Divider(
              height: 1.0,
              color: Colors.grey,
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
              child: const Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Vous pourriez également aimer ceci',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: 5.0),
                  Text('12 items'),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                CustomWidget(
                  imagePath: 'assets/images/image1.png',
                  title: 'Lorem',
                  currentPrice: '300.00Mru',
                  previousPrice: '500.00Mru',
                  rating: 4.9,
                  numReviews: 256,
                  showFavorite: false,
                  // cardColor: Colors.white,
                ),
                // SizedBox.expand(
                CustomWidget(
                  imagePath: 'assets/images/image2.jpg',
                  title: 'Lorem',
                  currentPrice: '300.00Mru',
                  previousPrice: '500.00Mru',
                  rating: 4.8,
                  numReviews: 128,
                  showFavorite: false,

                  // cardColor: Colors.white,
                  // ),
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
