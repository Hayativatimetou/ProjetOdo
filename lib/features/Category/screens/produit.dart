import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:startup/features/Category/screens/categ.dart';
import 'package:startup/features/Category/screens/categories.dart';
import 'package:startup/features/Category/widgets/CustAppbar.dart';
import 'package:startup/features/Category/screens/Details.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/features/Category/widgets/CustomWidget.dart';
import 'package:startup/config.dart';
import 'package:startup/features/Panier/screens/panier.dart';
import 'package:startup/features/main_screen.dart';

class produit extends StatefulWidget {
  const produit({Key? key}) : super(key: key);

  @override
  State<produit> createState() => _produitState();
}

class _produitState extends State<produit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: custAppbar(
        title: 'Produit',
        chevronLeftCallback: () {},
        searchCallback: () {},
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.black,
                        ),
                        hintText: 'Search Candles',
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: BorderSide(
                              color: Colors.blue,
                              width: width10px(context) * 0.2),
                        ),
                        contentPadding: EdgeInsets.symmetric(horizontal: 20.0),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(height: height10px(context) * 2),
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
                              Container(
                                child: Center(
                                  child: Text(
                                    "Trier par",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ),
                              SizedBox(height: height10px(context) * 3),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Apple Populaire',
                                    style: TextStyle(
                                        fontSize: fontSize10(context) * 1.4)),
                              ),
                              SizedBox(height: height10px(context) * 3),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Plus Récent',
                                    style: TextStyle(
                                        fontSize: fontSize10(context) * 1.4)),
                              ),
                              SizedBox(height: height10px(context) * 3),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Avis des Clients',
                                    style: TextStyle(
                                        fontSize: fontSize10(context) * 1.4)),
                              ),
                              SizedBox(height: height10px(context) * 3),
                              GestureDetector(
                                // onTap: () {
                                //   Navigator.push(
                                //     context,
                                //     MaterialPageRoute(
                                //       builder: (context) => Details(),
                                //     ),
                                //   );
                                // },
                                child: Container(
                                  color: Colors.blue,
                                  padding: EdgeInsets.all(8.0),
                                  margin: EdgeInsets.only(right: 8.0),
                                  child: Text(
                                    'Prix: du plus bas au plus élevé',
                                    style: TextStyle(
                                      fontSize: fontSize10(context) * 1.4,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: height10px(context) * 3),
                              Padding(
                                padding: const EdgeInsets.only(left: 8.0),
                                child: Text('Prix: du plus élevé au plus bas',
                                    style: TextStyle(fontSize: 14.0)),
                              ),
                              SizedBox(height: height10px(context) * 3),
                            ],
                          ),
                        );
                      },
                    );
                  },
                  child: Icon(Icons.menu),
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            SizedBox(height: height10px(context) * 1),
            IntrinsicHeight(
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(),
                        ),
                      );
                    },
                    child: Container(
                      width: width10px(context) * 20,
                      child: Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: CustomWidget(
                            imagePath: 'assets/images/image1.png',
                            title: 'Lorem',
                            currentPrice: '300.00Mru',
                            previousPrice: '500.00Mru',
                            rating: 4.9,
                            numReviews: 256,
                            showFavorite: false,
                          ),
                        ),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => Details(),
                        ),
                      );
                    },
                    child: Container(
                      width: width10px(context) * 18,
                      child: Padding(
                        padding: const EdgeInsets.only(left: 4.0),
                        child: CustomWidget(
                          imagePath: 'assets/images/image1.png',
                          title: 'Lorem',
                          currentPrice: '300.00Mru',
                          previousPrice: '500.00Mru',
                          rating: 4.9,
                          numReviews: 256,
                          showNew: false,
                          cardColor: Colors.white,
                          showFavorite: false,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: height10px(context) * 1),
            Row(
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ),
                    );
                  },
                  child: Container(
                    width: width10px(context) * 20,
                    child: CustomWidget(
                      imagePath: 'assets/images/image4.jpg',
                      title: 'Lorem',
                      currentPrice: '300.00Mru',
                      previousPrice: '500.00Mru',
                      rating: 4.9,
                      numReviews: 256,
                      showNew: false,
                      showFavorite: false,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => Details(),
                      ),
                    );
                  },
                  child: Container(
                    width: width10px(context) * 18,
                    child: CustomWidget(
                      imagePath: 'assets/images/image2.jpg',
                      title: 'Lorem',
                      currentPrice: '300.00Mru',
                      previousPrice: '500.00Mru',
                      rating: 4.8,
                      numReviews: 128,
                      showNew: false,
                      showFavorite: false,
                    ),
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
