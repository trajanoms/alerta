// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:google_maps_flutter/google_maps_flutter.dart' as gmaps;

class MapWithCircle extends StatefulWidget {
  const MapWithCircle({
    super.key,
    this.width,
    this.height,
    required this.center, // LatLng do FlutterFlow
    required this.radius,
  });

  final double? width;
  final double? height;
  final LatLng center;
  final double radius;

  @override
  State<MapWithCircle> createState() => _MapWithCircleState();
}

class _MapWithCircleState extends State<MapWithCircle> {
  late gmaps.GoogleMapController _mapController;
  Set<gmaps.Marker> _markers = {};
  Set<gmaps.Circle> _circles = {};

  @override
  void initState() {
    super.initState();
    _initMapObjects();
  }

  @override
  void didUpdateWidget(covariant MapWithCircle oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.center != widget.center ||
        oldWidget.radius != widget.radius) {
      _updateMapObjects();
    }
  }

  void _initMapObjects() {
    final gCenter =
        gmaps.LatLng(widget.center.latitude, widget.center.longitude);

    _markers = {
      gmaps.Marker(
        markerId: const gmaps.MarkerId('centerMarker'),
        position: gCenter,
        infoWindow: const gmaps.InfoWindow(title: 'Local selecionado'),
      ),
    };

    _circles = {
      gmaps.Circle(
        circleId: const gmaps.CircleId('radiusCircle'),
        center: gCenter,
        radius: widget.radius,
        fillColor: Colors.blue.withOpacity(0.2),
        strokeColor: Colors.blue,
        strokeWidth: 2,
      ),
    };
  }

  void _updateMapObjects() {
    final gCenter =
        gmaps.LatLng(widget.center.latitude, widget.center.longitude);

    setState(() {
      _markers = {
        gmaps.Marker(
          markerId: const gmaps.MarkerId('centerMarker'),
          position: gCenter,
          infoWindow: const gmaps.InfoWindow(title: 'Local selecionado'),
        ),
      };

      _circles = {
        gmaps.Circle(
          circleId: const gmaps.CircleId('radiusCircle'),
          center: gCenter,
          radius: widget.radius,
          fillColor: Colors.blue.withOpacity(0.2),
          strokeColor: Colors.blue,
          strokeWidth: 2,
        ),
      };
    });

    _mapController.animateCamera(
      gmaps.CameraUpdate.newCameraPosition(
        gmaps.CameraPosition(target: gCenter, zoom: 15.0),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final gCenter =
        gmaps.LatLng(widget.center.latitude, widget.center.longitude);

    return Container(
      width: widget.width,
      height: widget.height,
      child: gmaps.GoogleMap(
        key: ValueKey(
            '${widget.center.latitude}-${widget.center.longitude}-${widget.radius}'),
        initialCameraPosition: gmaps.CameraPosition(
          target: gCenter,
          zoom: 15.0,
        ),
        markers: _markers,
        circles: _circles,
        onMapCreated: (controller) {
          _mapController = controller;
        },
      ),
    );
  }
}
