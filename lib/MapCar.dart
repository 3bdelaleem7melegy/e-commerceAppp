// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables, file_names, avoid_print, sort_child_properties_last

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapCar extends StatefulWidget {
  const GoogleMapCar({super.key});

  @override
  State<GoogleMapCar> createState() => _GoogleMapCarState();
}

class _GoogleMapCarState extends State<GoogleMapCar> {
  // Completer _controller = Completer();
  var myMarker = HashSet<Marker>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            "Google Map",
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            GoogleMap(
              myLocationEnabled: true,
              initialCameraPosition: CameraPosition(
                  target: LatLng(30.03257912125153, 31.405029660646186),
                  zoom: 15),
              onMapCreated: (googleMapController) {
                setState(() {
                  myMarker.add(Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(30.03257912125153, 31.405029660646186),
                    infoWindow: InfoWindow(
                        title: 'Honda egypt',
                        snippet: 'Marketing center',
                        onTap: () {
                          print('Done');
                        }),
                  ));
                });
              },
              markers: myMarker,
            ),

            // Container(
            //   child: Image.asset("images/55.jpg"),
            //   alignment: Alignment.topCenter,
            // ),
            Container(
              child: Text(
                "Welcome",
                style: TextStyle(fontSize: 25),
              ),
              alignment: Alignment.bottomCenter,
            )
          ],
        ));
  }
}
