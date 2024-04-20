import 'package:flutter/material.dart';
import 'package:startup/features/Category/widgets/CustAppbar.dart';
import 'package:startup/features/Panier/screens/tracking.dart';
import 'package:startup/features/Panier/widgets/CustomButton.dart';

class pan extends StatefulWidget {
  const pan({Key? key}) : super(key: key);

  @override
  State<pan> createState() => _panState();
}

class _panState extends State<pan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: custAppbar(
        title: 'Panier',
        chevronLeftCallback: () {},
        searchCallback: () {},
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'Adresse Livraison',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.black,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Row(
                children: [
                  SizedBox(width: 20),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              'Nouakchott',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 200,
                            ),
                            Text(
                              'Changer',
                              style: TextStyle(
                                fontSize: 14.0,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Text(
                          '27 Najah , Tvz',
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Text(
                'Changer',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Image.asset(
                'assets/images/img1.png',
                width: 50,
                height: 50,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                '****3947',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Commande:',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 190,
              ),
              Text(
                '1120 MRU',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Livraison: ',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 220,
              ),
              Text(
                '15 MRU',
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: 14.0,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: 225,
              ),
              Text(
                '1270 MRU',
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          CustomButton(
            text: 'SOUMETTRE LA COMMANDE',
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 5.0),
                        Container(
                          child: Center(
                            child: Container(
                              width: 100,
                              height: 4,
                              color: Colors.grey,
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 16.0),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/img2.png',
                            width: 200,
                            height: 200,
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Center(
                          child: Text(
                            "Commande est confirmer ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        SizedBox(height: 5.0),
                        Center(
                          child: Text(
                            "Votre commande est confirmee,nous esperons etre livre  a temps et bon appetit ",
                            style: TextStyle(color: Colors.grey, fontSize: 16),
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        CustomButton(
                          text: 'Afficher le Tracker ',
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tracking()),
                            );
                          },
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
