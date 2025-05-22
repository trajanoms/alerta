import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'edit_ponto_interesse_widget.dart' show EditPontoInteresseWidget;
import 'package:flutter/material.dart';

class EditPontoInteresseModel
    extends FlutterFlowModel<EditPontoInteresseWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroVeiculo;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  double? raio = 0.0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomeCerca widget.
  FocusNode? nomeCercaFocusNode;
  TextEditingController? nomeCercaTextController;
  String? Function(BuildContext, String?)? nomeCercaTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for CBCercaPrincipal widget.
  bool? cBCercaPrincipalValue;
  // State field(s) for raioCerca widget.
  FocusNode? raioCercaFocusNode;
  TextEditingController? raioCercaTextController;
  String? Function(BuildContext, String?)? raioCercaTextControllerValidator;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue;
  FormFieldController<String>? aoEntrarValueController;
  // State field(s) for TipoVeiculo widget.
  String? tipoVeiculoValue;
  FormFieldController<String>? tipoVeiculoValueController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeCercaFocusNode?.dispose();
    nomeCercaTextController?.dispose();

    raioCercaFocusNode?.dispose();
    raioCercaTextController?.dispose();
  }
}
