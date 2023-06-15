



import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';




// ignore: camel_case_types
class harita extends StatefulWidget {
  const harita(PageStorageKey<String> keyHarita, {super.key});

  @override
  State<harita> createState() => haritaState();
}
double _originLatitude = 38.392300;
double _originLongitude = 27.047840;

// ignore: camel_case_types
class haritaState extends State<harita> {
  late GoogleMapController _controller;
  static final CameraPosition _initalCameraPosition = CameraPosition(
   target: LatLng(_originLatitude, _originLongitude),
    zoom: 15,
  );


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        
        child: GoogleMap(
          myLocationButtonEnabled: true,
          mapType: MapType.normal,
          initialCameraPosition: _initalCameraPosition,
          tiltGesturesEnabled: true,
          compassEnabled: true,
          scrollGesturesEnabled: true,
          zoomGesturesEnabled: true,
          onMapCreated: (GoogleMapController controller) {
           _controller = controller;
          },
        ),
      ),
      
    );
  }

  
}