import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:startup/config.dart';
import 'package:startup/features/Panier/screens/Reviews.dart';
import 'package:startup/features/Panier/widgets/CustomButton.dart';

class Tracking extends StatefulWidget {
  const Tracking({Key? key}) : super(key: key);

  @override
  _TrackingState createState() => _TrackingState();
}

class _TrackingState extends State<Tracking> {
  late GoogleMapController mapController;
  Position? currentPosition;

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      currentPosition = position;
    });
  }

  void _showModalBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SizedBox(
          height: height10px(context) * 100,
          child: Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Container(
                    width: width10px(context) * 10,
                    height: height10px(context) * 0.4,
                    color: Colors.grey,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    width: width10px(context) * 15,
                    margin: EdgeInsets.all(16.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.blue,
                    ),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            '#33-A45E',
                            style: TextStyle(
                              fontSize: fontSize10(context) * 1.6,
                              color: Colors.white,
                            ),
                          ),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.transparent),
                            elevation: MaterialStateProperty.all<double>(0),
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: height10px(context) * 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: width10px(context) * 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'temps restant',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: width10px(context) * 2,
                                ),
                                Container(
                                  height: height10px(context) * 3,
                                  width: width10px(context) * 0.4,
                                  color: Colors.grey,
                                ),
                                SizedBox(
                                  width: width10px(context) * 10,
                                ),
                                Text(
                                  'temps estime',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: height10px(context) * 0.5),
                            Row(
                              children: [
                                Text(
                                  '2 mins',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: width10px(context) * 17,
                                ),
                                Text(
                                  '35 mins',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: height10px(context) * 0.5),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: width10px(context) * 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: height10px(context) * 0.2,
                                  width: width10px(context) * 30,
                                  color: Colors.grey,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height10px(context) * 1,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: width10px(context) * 2),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                SizedBox(
                                  height: height10px(context) * 0.5,
                                ),
                                Text(
                                  'From',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: width10px(context) * 15,
                                ),
                                Text(
                                  'To',
                                  style: TextStyle(
                                      fontSize: fontSize10(context) * 1.4,
                                      color: Colors.grey),
                                ),
                              ],
                            ),
                            SizedBox(height: height10px(context) * 1),
                            Row(
                              children: [
                                Text(
                                  'Placio restaurant',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  width: width10px(context) * 5,
                                ),
                                Text(
                                  '123 rue mokthar ',
                                  style: TextStyle(
                                    fontSize: fontSize10(context) * 1.4,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(
                                  height: height10px(context) * 0.5,
                                ),
                                Text(
                                  'dadah,Tvz',
                                  style: TextStyle(
                                      fontSize: fontSize10(context) * 1.4,
                                      color: Colors.black),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: height10px(context) * 0.5,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      SizedBox(width: width10px(context) * 5),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: height10px(context) * 0.5),
                            Text(
                              'Driver details',
                              style: TextStyle(
                                fontSize: fontSize10(context) * 1.4,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(height: height10px(context) * 0.5),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/images/tst3.png',
                                  width: width10px(context) * 5,
                                  height: height10px(context) * 5,
                                ),
                                SizedBox(width: width10px(context) * 1),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('Sidi Doe'),
                                    SizedBox(height: height10px(context) * 0.5),
                                    Text('ID: 101D12345'),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(
                              height: height10px(context) * 0.3,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    width: width10px(context) * 15,
                                    margin: EdgeInsets.all(16.0),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(30),
                                      color: Colors.blue,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            showModalBottomSheet(
                                              context: context,
                                              builder: (BuildContext context) {
                                                return Container(
                                                  padding: EdgeInsets.all(20.0),
                                                  child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Container(
                                                        child: Center(
                                                          child: Container(
                                                            width: width10px(
                                                                    context) *
                                                                10,
                                                            height: height10px(
                                                                    context) *
                                                                0.4,
                                                            color: Colors.grey,
                                                          ),
                                                        ),
                                                        margin: EdgeInsets.only(
                                                            bottom: 16.0),
                                                      ),
                                                      Center(
                                                        child: Image.asset(
                                                          'assets/images/image10.png',
                                                          width: width10px(
                                                                  context) *
                                                              20,
                                                          height: height10px(
                                                                  context) *
                                                              20,
                                                        ),
                                                      ),
                                                      Center(
                                                        child: Text(
                                                          "Commande est confirmée ",
                                                          style: TextStyle(
                                                            color: Colors.black,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            fontSize: fontSize10(
                                                                    context) *
                                                                2.5,
                                                          ),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          height: height10px(
                                                                  context) *
                                                              1.5),
                                                      Center(
                                                        child: Text(
                                                          "Votre commande est confirmée, nous espérons être livrés à temps et bon appétit.",
                                                          style: TextStyle(
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: fontSize10(
                                                                      context) *
                                                                  1.6),
                                                        ),
                                                      ),
                                                      SizedBox(
                                                          height: height10px(
                                                                  context) *
                                                              0.5),
                                                      CustomButton(
                                                        text: 'Evaluations',
                                                        textColor: Colors.white,
                                                        backgroundColor:
                                                            Colors.blue,
                                                        onPressed: () {
                                                          Navigator.push(
                                                            context,
                                                            MaterialPageRoute(
                                                                builder:
                                                                    (context) =>
                                                                        reviews()),
                                                          );
                                                        },
                                                      ),
                                                      SizedBox(
                                                        height: height10px(
                                                                context) *
                                                            0.5,
                                                      ),
                                                      CustomButton(
                                                        text: 'Plus Tard',
                                                        textColor:
                                                            Color.fromRGBO(37,
                                                                156, 213, 1),
                                                        backgroundColor:
                                                            Colors.white,
                                                        onPressed: () {},
                                                      ),
                                                    ],
                                                  ),
                                                );
                                              },
                                            );
                                          },
                                          child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(Icons.phone,
                                                  color: Colors.white),
                                              SizedBox(
                                                  width:
                                                      width10px(context) * 0.5),
                                              Text(
                                                'Appeler',
                                                style: TextStyle(
                                                  fontSize:
                                                      fontSize10(context) * 1.6,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                          style: ButtonStyle(
                                            backgroundColor:
                                                MaterialStateProperty.all<
                                                    Color>(Colors.transparent),
                                            elevation: MaterialStateProperty
                                                .all<double>(0),
                                            shape: MaterialStateProperty.all<
                                                OutlinedBorder>(
                                              RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(20),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                            width: width10px(context) * 0.5),
                                        Text(
                                          'Message',
                                          style: TextStyle(
                                            fontSize: fontSize10(context) * 1.6,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    LatLng nouakchottPosition = LatLng(18.0735, -15.9582);

    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        backgroundColor: Colors.grey.shade100,
        leading: Container(
          padding: EdgeInsets.all(8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.grey.shade300,
          ),
          child: IconButton(
            icon: Icon(Icons.chevron_left, color: Colors.black),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ),
        title: Text('Tracking'),
        centerTitle: true,
        elevation: 0,
      ),
      body: Stack(
        children: [
          Positioned.fill(
            child: GoogleMap(
              initialCameraPosition: CameraPosition(
                target: currentPosition != null
                    ? LatLng(
                        currentPosition!.latitude, currentPosition!.longitude)
                    : nouakchottPosition,
                zoom: 12,
              ),
              markers: currentPosition != null
                  ? {
                      Marker(
                        markerId: MarkerId('current_position'),
                        position: LatLng(currentPosition!.latitude,
                            currentPosition!.longitude),
                        infoWindow: InfoWindow(
                          title: 'Votre position',
                        ),
                      ),
                    }
                  : {},
              zoomControlsEnabled: false,
              rotateGesturesEnabled: false,
              scrollGesturesEnabled: false,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              tiltGesturesEnabled: false,
              liteModeEnabled: false,
              mapToolbarEnabled: false,
              compassEnabled: false,
              indoorViewEnabled: false,
              trafficEnabled: false,
              buildingsEnabled: false,
              onMapCreated: (controller) {
                mapController = controller;
              },
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: GestureDetector(
              onTap: () {
                _showModalBottomSheet(context);
              },
              child: Container(
                height: height10px(context) * 5,
                color: Colors.transparent,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
