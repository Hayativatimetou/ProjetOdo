import 'package:flutter/material.dart';
import 'package:startup/features/Category/screens/produit.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';

class Categories extends StatefulWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  State<Categories> createState() => _CategoriesState();
}

void _navigateToCategoryDetails(BuildContext context, int categoryIndex) {
  Navigator.push(
    context,
    MaterialPageRoute(
      builder: (context) => produit(),
    ),
  );
}

class _CategoriesState extends State<Categories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        title: Text(
          'Categories',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
        leading: Container(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80.0,
              color: Colors.blueAccent,
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Soldes d\'été',
                      style: TextStyle(fontSize: 20.0, color: Colors.white),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      'jusqu\'à 50% de réduction',
                      style: TextStyle(fontSize: 12.0, color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10.0),
                  child: GestureDetector(
                    onTap: () {
                      if (index == 5) {
                        _navigateToCategoryDetails(context, index);
                      } else {
                        _navigateToCategoryDetails(context, index);
                      }
                    },
                    child: Container(
                      height: 80.0,
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Categorie ${index + 1}',
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 5.0,
                                ),
                                Text(
                                  '100 product',
                                  style: TextStyle(
                                    fontSize: 14.0,
                                    color: Colors.blueAccent,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 140.0,
                          ),
                          Image.asset(
                            'assets/images/image3.png',
                            width: 100,
                            height: 100,
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
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
