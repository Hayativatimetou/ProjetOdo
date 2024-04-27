import 'package:flutter/material.dart';
import 'package:startup/config.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Nouakchott',
                          style: TextStyle(
                            fontSize: fontSize10(context) * 1.4,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          'Changer',
                          style: TextStyle(
                            fontSize: fontSize10(context) * 1.4,
                            color: Colors.blue,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: height10px(context) * 1),
                    Text(
                      '27 Najah , Tvz',
                      style: TextStyle(
                        fontSize: fontSize10(context) * 1.4,
                        color: Colors.black,
                      ),
                    ),
                    SizedBox(
                      height: height10px(context) * 6,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Payment',
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.4,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(
                width: width10px(context) * 24,
              ),
              Text(
                'Changer',
                style: TextStyle(
                  fontSize: fontSize10(context) * 1.4,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 1,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
              ),
              Image.asset(
                'assets/images/img1.png',
                width: width10px(context) * 4,
                height: height10px(context) * 4,
              ),
              SizedBox(
                width: width10px(context) * 1,
              ),
              Text(
                '****3947',
                style: TextStyle(
                  fontSize: fontSize10(context) * 1.4,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 1,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Commande:',
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.4,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: width10px(context) * 21,
              ),
              Text(
                '1120 MRU',
                style: TextStyle(
                  fontSize: fontSize10(context) * 1.4,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 0.5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Livraison: ',
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.4,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: width10px(context) * 23.5,
              ),
              Text(
                '15 MRU',
                style: TextStyle(
                  fontSize: fontSize10(context) * 1.4,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 0.5,
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  'Total:',
                  style: TextStyle(
                    fontSize: fontSize10(context) * 1.4,
                    color: Colors.grey,
                  ),
                ),
              ),
              SizedBox(
                width: width10px(context) * 24,
              ),
              Text(
                '1270 MRU',
                style: TextStyle(
                  fontSize: fontSize10(context) * 1.6,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          SizedBox(
            height: height10px(context) * 2,
          ),
          CustomButton(
            text: 'SOUMETTRE LA COMMANDE',
            textColor: Colors.white,
            backgroundColor: Colors.blue,
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
                              color: Colors.grey,
                            ),
                          ),
                          margin: EdgeInsets.only(bottom: 16.0),
                        ),
                        Center(
                          child: Image.asset(
                            'assets/images/img2.png',
                            width: width10px(context) * 20,
                            height: height10px(context) * 20,
                          ),
                        ),
                        SizedBox(height: height10px(context) * 0.5),
                        Center(
                          child: Text(
                            "Commande est confirmer ",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: fontSize10(context) * 2.5),
                          ),
                        ),
                        SizedBox(height: height10px(context) * 0.5),
                        Center(
                          child: Text(
                            "Votre commande est confirmee,nous esperons etre livre  a temps et bon appetit ",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: fontSize10(context) * 1.6),
                          ),
                        ),
                        SizedBox(
                          height: height10px(context) * 1.5,
                        ),
                        CustomButton(
                          text: 'Afficher le Tracker ',
                          textColor: Colors.white,
                          backgroundColor: Colors.blue,
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Tracking()),
                            );
                          },
                          width: MediaQuery.of(context).size.width * 0.9,
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            width: MediaQuery.of(context).size.width * 0.9,
          ),
        ],
      ),
    );
  }
}
