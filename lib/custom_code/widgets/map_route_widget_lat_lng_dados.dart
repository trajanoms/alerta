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

import 'dart:async';
import 'package:google_maps_flutter/google_maps_flutter.dart' as gmap;

class MapRouteWidgetLatLngDados extends StatefulWidget {
  const MapRouteWidgetLatLngDados({
    super.key,
    required this.latitudePartida,
    required this.longitudePartida,
    required this.latitudeChegada,
    required this.longitudeChegada,
    this.width,
    this.height,
  });

  final String latitudePartida;
  final String longitudePartida;
  final String latitudeChegada;
  final String longitudeChegada;
  final double? width;
  final double? height;

  @override
  State<MapRouteWidgetLatLngDados> createState() =>
      _MapRouteWidgetLatLngDadosState();
}

class _MapRouteWidgetLatLngDadosState extends State<MapRouteWidgetLatLngDados> {
  late gmap.GoogleMapController _mapController;
  final Set<gmap.Marker> _markers = {};
  final Set<gmap.Polyline> _polylines = {};

  gmap.LatLng get origem => gmap.LatLng(
        double.tryParse(widget.latitudePartida) ?? 0.0,
        double.tryParse(widget.longitudePartida) ?? 0.0,
      );

  gmap.LatLng get destino => gmap.LatLng(
        double.tryParse(widget.latitudeChegada) ?? 0.0,
        double.tryParse(widget.longitudeChegada) ?? 0.0,
      );

  @override
  void didUpdateWidget(MapRouteWidgetLatLngDados oldWidget) {
    super.didUpdateWidget(oldWidget);
    _updateMap();
  }

  void _updateMap() {
    if (_mapController == null) return;

    _markers.clear();
    _polylines.clear();

    _markers.addAll([
      gmap.Marker(
        markerId: const gmap.MarkerId('origem'),
        position: origem,
        icon: gmap.BitmapDescriptor.defaultMarkerWithHue(
          gmap.BitmapDescriptor.hueGreen,
        ),
      ),
      gmap.Marker(
        markerId: const gmap.MarkerId('destino'),
        position: destino,
        icon: gmap.BitmapDescriptor.defaultMarkerWithHue(
          gmap.BitmapDescriptor.hueRed,
        ),
      ),
    ]);

    _polylines.add(gmap.Polyline(
      polylineId: const gmap.PolylineId('rota'),
      points: [origem, destino],
      color: Colors.blue,
      width: 5,
    ));

    final bounds = gmap.LatLngBounds(
      southwest: gmap.LatLng(
        origem.latitude < destino.latitude ? origem.latitude : destino.latitude,
        origem.longitude < destino.longitude
            ? origem.longitude
            : destino.longitude,
      ),
      northeast: gmap.LatLng(
        origem.latitude > destino.latitude ? origem.latitude : destino.latitude,
        origem.longitude > destino.longitude
            ? origem.longitude
            : destino.longitude,
      ),
    );

    _mapController.animateCamera(
      gmap.CameraUpdate.newLatLngBounds(bounds, 100),
    );

    setState(() {}); // Força rebuild para exibir marcadores e rota
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width ?? double.infinity,
      height: widget.height ?? 300,
      child: gmap.GoogleMap(
        initialCameraPosition: gmap.CameraPosition(
          target: origem,
          zoom: 12,
        ),
        markers: _markers,
        polylines: _polylines,
        onMapCreated: (controller) {
          _mapController = controller;
          _updateMap();
        },
        myLocationEnabled: false,
        zoomControlsEnabled: false,
      ),
    );
  }
}
