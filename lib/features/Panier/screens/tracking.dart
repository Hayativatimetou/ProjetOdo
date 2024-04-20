import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

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
          height: 600,
          child: Container(
            padding: EdgeInsets.all(2.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 5.0),
                Center(
                  child: Container(
                    width: 100,
                    height: 4,
                    color: Colors.grey,
                  ),
                ),
                Align(
                  alignment: Alignment.centerLeft, // Aligner le bouton à gauche
                  child: Container(
                    width: 150, // Largeur souhaitée du bouton
                    margin: EdgeInsets.all(
                        16.0), // Ajouter une marge autour du bouton
                    decoration: BoxDecoration(
                      borderRadius:
                          BorderRadius.circular(30), // Arrondir les coins
                      color: Colors.blue, // Définir la couleur spécifique
                    ),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        '#33-A45E',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                        ),
                      ),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors
                            .transparent), // Définir la couleur de fond du bouton comme transparente
                        elevation: MaterialStateProperty.all<double>(
                            0), // Supprimer l'ombre du bouton
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                20), // Définir le rayon de la bordure
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Temps restant'),
                        SizedBox(
                            width:
                                5), // Espacement entre le texte et la barre verticale
                        Container(
                          width: 2,
                          height: 14, // Hauteur de la barre verticale
                          color: Colors.grey,
                        ),
                        SizedBox(
                            width:
                                5), // Espacement entre la barre verticale et le texte suivant
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('2 mins', textAlign: TextAlign.right),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                        height:
                            5), // Espacement entre les deux ensembles de texte
                    SizedBox(
                        height:
                            10), // Hauteur entre le premier ensemble de texte et le deuxième
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Temps restant'),
                        SizedBox(width: 5),
                        Container(
                          width: 2,
                          height: 14, // Hauteur de la barre verticale
                          color: Colors.grey,
                        ),
                        SizedBox(
                            width:
                                5), // Espacement entre la barre verticale et le texte suivant
                        Expanded(
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: Text('2 mins', textAlign: TextAlign.left),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                SizedBox(height: 16.0),
                Center(
                  child: Text(
                    "Trier par",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                SizedBox(height: 16.0),
                Text('Apple Populaire', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 8.0),
                Text('Plus Récent', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 8.0),
                Text('Avis des Clients', style: TextStyle(fontSize: 16.0)),
                SizedBox(height: 8.0),
                GestureDetector(
                  onTap: () {
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(
                    //     builder: (context) => Details(),
                    //   ),
                    // );
                  },
                  child: Container(
                    color: Colors.blue,
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Prix: du plus bas au plus élevé',
                      style: TextStyle(fontSize: 16.0, color: Colors.white),
                    ),
                  ),
                ),
                SizedBox(height: 8.0),
                Text('Prix: du plus élevé au plus bas',
                    style: TextStyle(fontSize: 16.0)),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    // Coordonnées de Nouakchott
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
                height: 50, // Ajustez la hauteur selon votre besoin
                color: Colors.transparent, // Pour définir une zone cliquable
              ),
            ),
          ),
        ],
      ),
    );
  }
}
