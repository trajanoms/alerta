import '/flutter_flow/flutter_flow_util.dart';
import 'ponto_interesse_dados_widget.dart' show PontoInteresseDadosWidget;
import 'package:flutter/material.dart';

class PontoInteresseDadosModel
    extends FlutterFlowModel<PontoInteresseDadosWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroVeiculo;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for CBCercaPrincipal widget.
  bool? cBCercaPrincipalValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
