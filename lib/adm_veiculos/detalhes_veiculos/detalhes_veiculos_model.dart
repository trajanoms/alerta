import '/flutter_flow/flutter_flow_google_map.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_veiculos_widget.dart' show DetalhesVeiculosWidget;
import 'package:flutter/material.dart';

class DetalhesVeiculosModel extends FlutterFlowModel<DetalhesVeiculosWidget> {
  ///  Local state fields for this component.

  bool? chat;

  bool? chat2;

  String? latSelecionada = '0';

  String? longSelecionada = '0';

  String? filtroSelecionado;

  int? veiculoID;

  ///  State fields for stateful widgets in this component.

  // State field(s) for GoogleMap widget.
  LatLng? googleMapsCenter;
  final googleMapsController = Completer<GoogleMapController>();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
