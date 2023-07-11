// ignore_for_file: prefer_const_constructors, prefer_final_fields, unused_field, prefer_const_literals_to_create_immutables, file_names, avoid_print, sort_child_properties_last

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Googleelctronic extends StatefulWidget {
  const Googleelctronic({super.key});

  @override
  State<Googleelctronic> createState() => _GoogleelctronicState();
}

class _GoogleelctronicState extends State<Googleelctronic> {
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
                  target: LatLng(29.973757768986687, 31.019491738526522),
                  zoom: 15),
              onMapCreated: (googleMapController) {
                setState(() {
                  myMarker.add(Marker(
                    markerId: MarkerId('1'),
                    position: LatLng(29.973757768986687, 31.019491738526522),
                    infoWindow: InfoWindow(
                        title: 'Moll Masr',
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
