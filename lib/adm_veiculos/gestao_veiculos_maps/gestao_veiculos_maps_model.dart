import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'gestao_veiculos_maps_widget.dart' show GestaoVeiculosMapsWidget;
import 'package:flutter/material.dart';

class GestaoVeiculosMapsModel
    extends FlutterFlowModel<GestaoVeiculosMapsWidget> {
  ///  Local state fields for this component.

  String? latSelecionada = '0';

  String? longSelecionada = '0';

  String? filtroSelecionado;

  int? veiculoID;

  ///  State fields for stateful widgets in this component.

  Completer<List<ViewDetalhesVeiculoRow>>? requestCompleter;
  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
