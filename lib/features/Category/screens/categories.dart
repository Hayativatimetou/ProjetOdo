import 'package:flutter/material.dart';
import 'package:startup/features/Category/screens/produit.dart';
import 'package:startup/features/Category/widgets/CustomBottomNavigationBar.dart';
import 'package:startup/config.dart';

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
  int currentIndex = 0;
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
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Card(
                color: Colors.blue,
                elevation: 3.0,
                child: Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Soldes d\'été',
                        style: TextStyle(
                          fontSize: fontSize10(context) * 2,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(
                        height: height10px(context) * 1,
                      ),
                      Text(
                        'jusqu\'à 50% de réduction',
                        style: TextStyle(
                          fontSize: fontSize10(context) * 1.2,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: height10px(context) * 1,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemCount: 6,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    elevation: 3.0,
                    child: GestureDetector(
                      onTap: () {
                        _navigateToCategoryDetails(context, index);
                      },
                      child: AspectRatio(
                        aspectRatio: 3 / 1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Catégorie ${index + 1}',
                                    style: TextStyle(
                                      fontSize: fontSize10(context) * 2,
                                      color: Colors.black,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  SizedBox(
                                    height: height10px(context) * 0.5,
                                  ),
                                  Text(
                                    '100 produits',
                                    style: TextStyle(
                                      fontSize: fontSize10(context) * 1.4,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              width: width10px(context) * 6.5,
                            ),
                            Image.asset(
                              'assets/images/image3.png',
                              width: width10px(context) * 16.5,
                              height: height10px(context) * 16,
                            ),
                            SizedBox(
                              width: width10px(context) * 2,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
