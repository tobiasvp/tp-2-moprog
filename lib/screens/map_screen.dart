// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class MapScreen extends StatefulWidget {
//   @override
//   _MapScreenState createState() => _MapScreenState();
// }

// class _MapScreenState extends State<MapScreen> {
//   GoogleMapController? _mapController;

//   // Inisialisasi koordinat tengah peta.
//   static const LatLng _center =
//       // const LatLng(37.42796133580664, -122.085749655962);
//       const LatLng(23.0225, 72.5714);

//   //  target:,

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Google Maps '),
//       ),
//       body: GoogleMap(
//         onMapCreated: (controller) {
//           setState(() {
//             _mapController = controller;
//           });
//         },
//         initialCameraPosition: CameraPosition(
//           target: _center,
//           zoom: 15.0,
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const MapScreen());

class MapScreen extends StatefulWidget {
  const MapScreen({super.key});

  @override
  State createState() => _MapScreenState();
}

class _MapScreenState extends State {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(-33.86, 151.20);

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Maps Sample App'),
          backgroundColor: Colors.green[700],
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 11.0,
          ),
        ),
      ),
    );
  }
}
