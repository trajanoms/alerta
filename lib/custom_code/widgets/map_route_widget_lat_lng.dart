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

class MapRouteWidgetLatLng extends StatefulWidget {
  const MapRouteWidgetLatLng({
    super.key,
    required this.origemString,
    required this.destinoString,
    this.width,
    this.height,
  });

  final String origemString;
  final String destinoString;
  final double? width;
  final double? height;

  @override
  State<MapRouteWidgetLatLng> createState() => _MapRouteWidgetLatLngState();
}

class _MapRouteWidgetLatLngState extends State<MapRouteWidgetLatLng> {
  late gmap.GoogleMapController _mapController;
  final Set<gmap.Marker> _markers = {};
  final Set<gmap.Polyline> _polylines = {};

  gmap.LatLng _parseLatLng(String input) {
    try {
      final regex = RegExp(r'LatLng\(lat: ([\-0-9.]+), lng: ([\-0-9.]+)\)');
      final match = regex.firstMatch(input);
      if (match != null) {
        final lat = double.parse(match.group(1)!);
        final lng = double.parse(match.group(2)!);
        return gmap.LatLng(lat, lng);
      } else {
        print('❌ Não conseguiu fazer parse do LatLng: $input');
        return const gmap.LatLng(0, 0);
      }
    } catch (e) {
      print('❌ Erro ao fazer parse: $e');
      return const gmap.LatLng(0, 0);
    }
  }

  gmap.LatLng get origem => _parseLatLng(widget.origemString);
  gmap.LatLng get destino => _parseLatLng(widget.destinoString);

  @override
  void didUpdateWidget(MapRouteWidgetLatLng oldWidget) {
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
      polylineId: const gmap.PolylineId('route'),
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

    setState(() {}); // Rebuilda para garantir que tudo será redesenhado
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
