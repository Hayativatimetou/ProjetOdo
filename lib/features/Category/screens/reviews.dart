import 'package:flutter/material.dart';
import 'package:startup/config.dart';
import 'package:startup/features/Category/widgets/CustAppbar.dart';

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
            ' 4 reviews',
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: fontSize10(context) * 2),
          ),
          Container(
            height: height10px(context) * 18,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image7.png'),
                      radius: 15,
                    ),
                    SizedBox(width: width10px(context) * 1),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Courtney Henry',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
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
                              Text('2 mins ago'),
                              Spacer(),
                              Icon(Icons.more_vert),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height10px(context) * 0.1),
                Text(
                  'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor aipiscing et voluptate duis sit esse aliqua',
                  style: TextStyle(fontSize: fontSize10(context) * 1.4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height10px(context) * 0.1,
          ),
          Container(
            height: height10px(context) * 18,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image7.png'),
                      radius: 15,
                    ),
                    SizedBox(width: width10px(context) * 1),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Courtney Henry',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
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
                              Text('2 mins ago'),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height10px(context) * 0.1),
                Text(
                  'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor aipiscing et voluptate duis sit esse aliqua',
                  style: TextStyle(fontSize: fontSize10(context) * 1.4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.blue,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height10px(context) * 0.1,
          ),
          Container(
            height: height10px(context) * 18,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image7.png'),
                      radius: 15,
                    ),
                    SizedBox(width: width10px(context) * 1),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Courtney Henry',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
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
                              Text('2 mins ago'),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height10px(context) * 0.1),
                Text(
                  'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor aipiscing et voluptate duis sit esse aliqua',
                  style: TextStyle(fontSize: fontSize10(context) * 1.4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.thumb_up,
                      color: Colors.grey,
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: height10px(context) * 0.1,
          ),
          Container(
            height: height10px(context) * 18,
            padding: const EdgeInsets.all(10.0),
            margin: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/images/image7.png'),
                      radius: 15,
                    ),
                    SizedBox(width: width10px(context) * 1),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Courtney Henry',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Row(
                            children: [
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
                              Text('2 mins ago'),
                              Spacer(),
                              Icon(
                                Icons.more_vert,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: height10px(context) * 0.1),
                Text(
                  'Consequat velit qui adipisicing sunt do rependerit ad laborum tempor ullamco exercitation. Ullamco tempor aipiscing et voluptate duis sit esse aliqua',
                  style: TextStyle(fontSize: fontSize10(context) * 1.4),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(Icons.thumb_up, color: Colors.blue),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
