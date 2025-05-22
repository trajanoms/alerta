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

class MapWithCircleDados extends StatefulWidget {
  const MapWithCircleDados({
    super.key,
    this.width,
    this.height,
    required this.latitude,
    required this.longitude,
    required this.radius,
  });

  final double? width;
  final double? height;
  final String latitude;
  final String longitude;
  final double radius;

  @override
  State<MapWithCircleDados> createState() => _MapWithCircleDadosState();
}

class _MapWithCircleDadosState extends State<MapWithCircleDados> {
  late gmaps.GoogleMapController _mapController;
  Set<gmaps.Marker> _markers = {};
  Set<gmaps.Circle> _circles = {};

  double? _lat;
  double? _lng;

  @override
  void initState() {
    super.initState();
    _convertLatLng();
    _initMapObjects();
  }

  @override
  void didUpdateWidget(covariant MapWithCircleDados oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.latitude != widget.latitude ||
        oldWidget.longitude != widget.longitude ||
        oldWidget.radius != widget.radius) {
      _convertLatLng();
      _updateMapObjects();
    }
  }

  void _convertLatLng() {
    _lat = double.tryParse(widget.latitude);
    _lng = double.tryParse(widget.longitude);
  }

  void _initMapObjects() {
    if (_lat == null || _lng == null) return;
    final gCenter = gmaps.LatLng(_lat!, _lng!);

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
    if (_lat == null || _lng == null) return;
    final gCenter = gmaps.LatLng(_lat!, _lng!);

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
    if (_lat == null || _lng == null) {
      return const Center(child: Text('Coordenadas inválidas'));
    }

    final gCenter = gmaps.LatLng(_lat!, _lng!);

    return Container(
      width: widget.width,
      height: widget.height,
      child: gmaps.GoogleMap(
        key: ValueKey('${_lat!}-${_lng!}-${widget.radius}'),
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
