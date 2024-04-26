import 'package:flutter/material.dart';
import 'package:startup/config.dart';
import 'package:startup/features/profile/screens/detailcommande.dart';

class OrdersScreen extends StatefulWidget {
  @override
  _OrdersScreenState createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  List<Order> orders = [
    Order(
      orderNumber: '1234',
      date: '05-03-2024',
      serialNumber: 'S12345',
      totalAmount: '112\MRU',
      quantity: '2',
      status: OrderStatus.delivered,
    ),
    Order(
      orderNumber: '5678',
      date: 'April 19, 2024',
      serialNumber: 'S67890',
      totalAmount: '150\MRU',
      quantity: '3',
      status: OrderStatus.inProgress,
    ),
    // Add more orders as needed
  ];

  @override
  Widget build(BuildContext context) {
    var _selectedIndex = 0; // Initialize _selectedIndex with an initial value

    void _onItemTapped(int index) {
      // Define what should happen when an item is tapped
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 249, 244, 244),
      appBar: AppBar(
        title: Text('Mes Commandes'),
        bottom: PreferredSize(
          preferredSize:
              Size.fromHeight(30.0), // Ajustez la hauteur selon vos besoins
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 4.0), // Ajouter un padding vers le haut
                    child: ElevatedButton(
                      onPressed: () {
                        // Handle delivered button tap
                        setState(() {
                          orders.forEach((order) {
                            order.status = OrderStatus.delivered;
                          });
                        });
                      },
                      style: ElevatedButton.styleFrom(
                        // primary: Colors.blue,
                        backgroundColor: Colors.blue,
                      ),
                      child: Text(
                        'Livré',
                        style: TextStyle(
                          fontSize: 18.0,
                          color: Colors.white,
                          fontWeight: FontWeight.bold, // Make the title bold
                        ),
                      ),
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Handle in progress button tap
                  //     setState(() {
                  //       orders.forEach((order) {
                  //         order.status = OrderStatus.inProgress;
                  //       });
                  //     });
                  //   },
                  //   child: Text('En cours'),
                  // ),
                  Text(
                    'En cours',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold, // Make the title bold
                    ),
                  ),
                  Text(
                    'Annule',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold, // Make the title bold
                    ),
                  ),
                  // ElevatedButton(
                  //   onPressed: () {
                  //     // Handle cancel button tap
                  //     setState(() {
                  //       orders.forEach((order) {
                  //         order.status = OrderStatus.cancelled;
                  //       });
                  //     });
                  //   },
                  //   child: Text('Annulé'),
                  // ),
                ],
              ),
            ],
          ),
        ),
      ),
      body: GestureDetector(
        onTap: () {
          // Naviguer vers la page Detail lorsque la colonne de commande est tapée
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Detail()),
          );
        },
        child: ListView.builder(
          itemCount: orders.length,
          itemBuilder: (context, index) {
            return buildOrderContainer(orders[index]);
          },
        ),
      ),
    );
  }

  Widget buildOrderContainer(Order order) {
    Color statusColor = Colors.green;

    return Container(
      margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.white),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Commande N:${order.orderNumber}',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text('${order.date}'),
            ],
          ),
          SizedBox(height: height10px(context) * 1),
          Text('Numéro de série: ${order.serialNumber}'),
          Text(
            'Montant total: ${order.totalAmount}',
            style: TextStyle(
              fontWeight: FontWeight.bold,

              // Make the title bold
            ),
          ),
          Text(
            'Quantité: ${order.quantity}',
            style: TextStyle(
              fontWeight: FontWeight.bold,

              // Make the title bold
            ),
          ),
          SizedBox(
            height: height10px(context) * 1,
            width: width10px(context) * 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    order.status = OrderStatus.delivered;
                  });
                },
                style: ElevatedButton.styleFrom(
                    //  primary: statusColor,
                    ),
                child: Text(
                  'Livré',
                  style: TextStyle(
                    color: Colors.white,
                    // Make the title bold
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

enum OrderStatus { delivered, inProgress, cancelled }

class Order {
  final String orderNumber;
  final String date;
  final String serialNumber;
  final String totalAmount;
  final String quantity;
  OrderStatus status;

  Order({
    required this.orderNumber,
    required this.date,
    required this.serialNumber,
    required this.totalAmount,
    required this.quantity,
    required this.status,
  });
}
