// Create a stack with a map and a button on the top right corner to accept the order, use google_maps_flutter and have the camera position start in Laredo Texas

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MapOperator extends StatefulWidget {
  const MapOperator({super.key});

  @override
  State<MapOperator> createState() => _MapOperatorState();
}

class _MapOperatorState extends State<MapOperator> {
  //* Variables and Services
  final CameraPosition _initialCameraPosition = const CameraPosition(
    target: LatLng(27.530567, -99.480324),
    zoom: 12,
  );

  late GoogleMapController _googleMapController;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          initialCameraPosition: _initialCameraPosition,
          onMapCreated: (controller) => _googleMapController = controller,
        ),
        Positioned(
          top: 20,
          right: 20,
          child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            child: const Icon(
              Icons.check,
              color: Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}
