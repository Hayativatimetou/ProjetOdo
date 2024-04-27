import 'package:flutter/material.dart';
import 'package:startup/features/Panier/screens/Pan.dart';
import 'package:startup/features/Panier/widgets/CustomButton.dart';
import 'package:startup/config.dart';

class panier extends StatefulWidget {
  const panier({Key? key}) : super(key: key);

  @override
  State<panier> createState() => _panierState();
}

class _panierState extends State<panier> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  int quantity1 = 1;
  int quantity2 = 1;
  int quantity3 = 1;

  void incrementQuantity1() {
    setState(() {
      quantity1++;
    });
  }

  void decrementQuantity1() {
    setState(() {
      if (quantity1 > 1) {
        quantity1--;
      }
    });
  }

  void incrementQuantity2() {
    setState(() {
      quantity2++;
    });
  }

  void decrementQuantity2() {
    setState(() {
      if (quantity2 > 1) {
        quantity2--;
      }
    });
  }

  void incrementQuantity3() {
    setState(() {
      quantity3++;
    });
  }

  void decrementQuantity3() {
    setState(() {
      if (quantity3 > 1) {
        quantity3--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        automaticallyImplyLeading: false,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'Panier',
                style: TextStyle(
                  fontSize: fontSize10(context) * 2,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: width10px(context) * 10,
                    height: height10px(context) * 10,
                  ),
                  SizedBox(width: width10px(context) * 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height10px(context) * 2,
                            ),
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width10px(context) * 13,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                } else if (value == "remove") {}
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: height10px(context) * 3),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 8),
                            InkWell(
                              onTap: decrementQuantity1,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            Text(
                              '$quantity1',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            InkWell(
                              onTap: incrementQuantity1,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(height: height10px(context) * 5),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: height10px(context) * 0.2,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: width10px(context) * 10,
                    height: height10px(context) * 10,
                  ),
                  SizedBox(width: width10px(context) * 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height10px(context) * 2,
                            ),
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width10px(context) * 13,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                } else if (value == "remove") {}
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: height10px(context) * 3),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 8),
                            InkWell(
                              onTap: decrementQuantity2,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            Text(
                              '$quantity2',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            InkWell(
                              onTap: incrementQuantity2,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(height: height10px(context) * 5),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          SizedBox(
            height: height10px(context) * 0.2,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  Image.asset(
                    'assets/images/image8.png',
                    width: width10px(context) * 10,
                    height: height10px(context) * 10,
                  ),
                  SizedBox(width: width10px(context) * 2),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: height10px(context) * 2,
                            ),
                            Text(
                              'Produit 1',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: width10px(context) * 13,
                            ),
                            PopupMenuButton(
                              itemBuilder: (BuildContext context) {
                                return [
                                  PopupMenuItem(
                                    child: Text("Ajouter au favoris"),
                                    value: "favorite",
                                  ),
                                  PopupMenuItem(
                                    child: Text("Supprimer de la liste"),
                                    value: "remove",
                                  ),
                                ];
                              },
                              onSelected: (value) {
                                if (value == "favorite") {
                                } else if (value == "remove") {}
                              },
                              icon: Icon(Icons.more_vert, color: Colors.grey),
                            ),
                          ],
                        ),
                        SizedBox(height: height10px(context) * 3),
                        Row(
                          children: [
                            Text(
                              '510 MRU',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 8),
                            InkWell(
                              onTap: decrementQuantity3,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.remove),
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            Text(
                              '$quantity3',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.2,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: width10px(context) * 1),
                            InkWell(
                              onTap: incrementQuantity3,
                              child: Container(
                                width: width10px(context) * 3,
                                height: width10px(context) * 3,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: Icon(Icons.add),
                              ),
                            ),
                            SizedBox(height: height10px(context) * 5),
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //),
          SizedBox(
            height: height10px(context) * 0.1,
          ),

          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 1.0,
              child: ListTile(
                title: TextField(
                  // controller: _controller,
                  decoration: InputDecoration(
                    hintText: 'Entrer votre code promo',
                  ),
                ),
                trailing: CircleAvatar(
                  backgroundColor: Colors.black,
                  child: IconButton(
                    icon: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                    onPressed: () {},
                  ),
                ),
              ),
            ),
          ),

          SizedBox(
            height: height10px(context) * 0.1,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    'Montant Total : ',
                    style: TextStyle(
                      fontSize: fontSize10(context) * 1.4,
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: width10px(context) * 17,
              ),
              Text(
                '1240 MRU',
                style: TextStyle(
                    fontSize: fontSize10(context) * 1.6,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 0.5,
          ),
          CustomButton(
            text: 'Accéder au paiement',
            textColor: Colors.white,
            backgroundColor: Colors.blue,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => pan()),
              );
            },
            width: MediaQuery.of(context).size.width * 0.9,
          )
        ],
      ),
    );
  }
}
