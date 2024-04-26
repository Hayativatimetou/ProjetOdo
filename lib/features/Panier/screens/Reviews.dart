import 'package:flutter/material.dart';
import 'package:startup/config.dart';

import 'package:startup/features/Panier/widgets/CustAppbar.dart';
import 'package:startup/features/Panier/widgets/CustomButton.dart';

class reviews extends StatefulWidget {
  const reviews({Key? key}) : super(key: key);

  @override
  State<reviews> createState() => _reviewsState();
}

class _reviewsState extends State<reviews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: custAppbar(
        title: 'Rating and reviews',
        chevronLeftCallback: () {},
        searchCallback: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            ' 8 reviews',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: fontSize10(context) * 20),
          ),
          SizedBox(
            height: height10px(context) * 40,
          ),
          CustomButton(
            text: 'SOUMETTRE LA COMMANDE',
            color: Colors.blue,
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: height10px(context) * 0.5),
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
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text(
                                  "Quel est votre taux ?",
                                  style: TextStyle(color: Colors.black),
                                ),
                                SizedBox(
                                  height: height10px(context) * 3,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: width10px(context) * 0.5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: width10px(context) * 0.5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: width10px(context) * 0.5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                    ),
                                    SizedBox(width: width10px(context) * 0.5),
                                    Icon(
                                      Icons.star,
                                      color: Colors.grey,
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  height: height10px(context) * 1,
                                ),
                                Text(
                                  'S\'il vous plaît, partagez votre avis sur le produit',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Card(
                                    elevation: 1.0,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Row(
                                        children: [
                                          SizedBox(width: 20),
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Row(
                                                  children: [
                                                    Text(
                                                      'votre avis',
                                                      style: TextStyle(
                                                        fontSize: 14.0,
                                                        color: Colors.grey,
                                                      ),
                                                    ),
                                                    SizedBox(
                                                      height: 150,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                CustomButton(
                                  text: 'Envoyer mon avis',
                                  color: Colors.blue,
                                  onPressed: () {
                                    showModalBottomSheet(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          padding: EdgeInsets.all(20.0),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(height: 5.0),
                                              Container(
                                                child: Center(
                                                  child: Container(
                                                    width: 100,
                                                    height: 4,
                                                    color: Colors.black,
                                                  ),
                                                ),
                                                margin: EdgeInsets.only(
                                                    bottom: 16.0),
                                              ),
                                              Container(
                                                child: Center(
                                                  child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .center,
                                                    children: [
                                                      Text(
                                                        "Quel est votre taux ?",
                                                        style: TextStyle(
                                                            color:
                                                                Colors.black),
                                                      ),
                                                      SizedBox(
                                                        height: 30,
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .center,
                                                        children: <Widget>[
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          SizedBox(width: 5.0),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          SizedBox(width: 5.0),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          SizedBox(width: 5.0),
                                                          Icon(
                                                            Icons.star,
                                                            color:
                                                                Colors.yellow,
                                                          ),
                                                          SizedBox(width: 5.0),
                                                          Icon(
                                                            Icons.star,
                                                            color: Colors.grey,
                                                          ),
                                                        ],
                                                      ),
                                                      SizedBox(
                                                        height: 10,
                                                      ),
                                                      Text(
                                                        'S\'il vous plaît, partagez votre avis sur le produit',
                                                        style: TextStyle(
                                                          color: Colors.black,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                .all(8.0),
                                                        child: Card(
                                                          elevation: 1.0,
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(8.0),
                                                            child: Row(
                                                              children: [
                                                                SizedBox(
                                                                    width: 20),
                                                                Expanded(
                                                                  child: Column(
                                                                    crossAxisAlignment:
                                                                        CrossAxisAlignment
                                                                            .start,
                                                                    children: [
                                                                      Text(
                                                                        'lorem elicieuse combinaison d ingredients varies,parfaite pour une collation energisante en deplacement. Recomande !',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              14.0,
                                                                          color:
                                                                              Colors.grey,
                                                                        ),
                                                                      ),
                                                                      SizedBox(
                                                                        height:
                                                                            80,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                        height: 20,
                                                      ),
                                                      CustomButton(
                                                        text:
                                                            'Envoyer mon avis',
                                                        color: Colors.blue,
                                                        onPressed: () {},
                                                      ),
                                                      SizedBox(
                                                        height: 15,
                                                      ),
                                                      Container(
                                                        child: Center(
                                                          child: Container(
                                                            width: 200,
                                                            height: 4,
                                                            color: Colors.black,
                                                          ),
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            bottom: 16.0),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        );
                                      },
                                    );
                                  },
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  child: Center(
                                    child: Container(
                                      width: 200,
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
                      ],
                    ),
                  );
                },
              );
            },
          ),
        ],
      ),
    );
  }
}
