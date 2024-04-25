import 'package:flutter/material.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/features/Category/widgets/CustomWidget.dart';
import 'package:startup/config.dart';

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
            if (context != null) {
              Navigator.of(context!).pop();
            }
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
            onPressed: () {},
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
                    width: width10px(context) * 1,
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Image.asset(
                      'assets/images/image5.jpg',
                      width: width10px(context) * 25,
                      height: height10px(context) * 20,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: width10px(context) * 1),
                  Padding(
                    padding:
                        const EdgeInsets.only(right: 5, top: 8.0, bottom: 8.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        'assets/images/image6.png',
                        width: width10px(context) * 25,
                        height: height10px(context) * 20,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(width: width10px(context) * 0.5),
                  SizedBox(height: height10px(context) * 2),
                  Text(
                    'Produit 1',
                    style: TextStyle(
                      fontSize: fontSize10(context) * 2,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height10px(context) * 1),
                  Text(
                    'Lorem',
                    style: TextStyle(
                        fontSize: fontSize10(context) * 1.4,
                        color: Colors.grey),
                  ),
                  SizedBox(height: height10px(context) * 1),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: <Widget>[
                  SizedBox(width: width10px(context) * 0.5),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 235, 182, 91),
                    size: 20,
                  ),
                  SizedBox(
                    width: width10px(context) * 0.5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 235, 182, 91),
                    size: 20,
                  ),
                  SizedBox(
                    width: width10px(context) * 0.5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 235, 182, 91),
                    size: 20,
                  ),
                  SizedBox(
                    width: width10px(context) * 0.5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 235, 182, 91),
                    size: 20,
                  ),
                  SizedBox(
                    width: width10px(context) * 0.5,
                  ),
                  Icon(
                    Icons.star,
                    color: Color.fromARGB(255, 235, 182, 91),
                    size: 20,
                  ),
                  SizedBox(
                    width: width10px(context) * 0.5,
                  ),
                  Text('(10)'),
                  SizedBox(width: width10px(context) * 12),
                  Text(
                    '1900MRU',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: fontSize10(context) * 2,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height10px(context) * 2),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Notre mélange offre une combinaison savoureuse de raisins secs, cranberries, abricots, amandes, noix de cajou, noisettes et noix de coco. Parfait pour une collation saine et énergisante à tout moment de la journée',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height10px(context) * 2),
            Container(
              height: height10px(context) * 10,
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
                          child: Text(
                            'Ajouter au panier',
                            style: TextStyle(
                              fontSize: fontSize10(context) * 1.6,
                              color: Colors.white, // Couleur du texte
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 37, 156, 213),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            elevation: 0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height10px(context) * 1.5,
                    ),
                    Container(
                      child: Center(
                        child: Container(
                          width: width10px(context) * 10,
                          height: height10px(context) * 0.4,
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
              padding: EdgeInsets.all(10.0),
              height: height10px(context) * 6,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Informations sur la livraison',
                      style: TextStyle(fontSize: fontSize10(context) * 1.4),
                    ),
                  ),
                  SizedBox(width: width10px(context) * 0.5),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              height: height10px(context) * 0.1,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              height: height10px(context) * 6,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Support',
                      style: TextStyle(fontSize: fontSize10(context) * 1.4),
                    ),
                  ),
                  SizedBox(width: width10px(context) * 0.5),
                  IconButton(
                    icon: Icon(Icons.chevron_right, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Divider(
              height: height10px(context) * 0.1,
              color: Colors.grey,
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      'Vous pourriez également aimer ceci',
                      style: TextStyle(
                        fontSize: fontSize10(context) * 1.2,
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(width: width10px(context) * 0.4),
                  Text('12 items'),
                ],
              ),
            ),
            SizedBox(
              height: height10px(context) * 1,
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
                ),
                CustomWidget(
                  imagePath: 'assets/images/image2.jpg',
                  title: 'Lorem',
                  currentPrice: '300.00Mru',
                  previousPrice: '500.00Mru',
                  rating: 4.8,
                  numReviews: 128,
                  showFavorite: false,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
