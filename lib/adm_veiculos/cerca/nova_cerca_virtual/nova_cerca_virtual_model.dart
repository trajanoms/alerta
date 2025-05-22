import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nova_cerca_virtual_widget.dart' show NovaCercaVirtualWidget;
import 'package:flutter/material.dart';

class NovaCercaVirtualModel extends FlutterFlowModel<NovaCercaVirtualWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroVeiculo;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  String? latlong;

  double? radiusValue = 0.0;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for nomeCerca widget.
  FocusNode? nomeCercaFocusNode;
  TextEditingController? nomeCercaTextController;
  String? Function(BuildContext, String?)? nomeCercaTextControllerValidator;
  // State field(s) for endereco widget.
  FocusNode? enderecoFocusNode;
  TextEditingController? enderecoTextController;
  String? Function(BuildContext, String?)? enderecoTextControllerValidator;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue = FFPlace();
  // State field(s) for raioCerca widget.
  FocusNode? raioCercaFocusNode;
  TextEditingController? raioCercaTextController;
  String? Function(BuildContext, String?)? raioCercaTextControllerValidator;
  // State field(s) for limiteVelocidade widget.
  FocusNode? limiteVelocidadeFocusNode;
  TextEditingController? limiteVelocidadeTextController;
  String? Function(BuildContext, String?)?
      limiteVelocidadeTextControllerValidator;
  // State field(s) for CBCercaPrincipal widget.
  bool? cBCercaPrincipalValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue;
  FormFieldController<String>? aoEntrarValueController;
  // State field(s) for TipoVeiculo widget.
  String? tipoVeiculoValue;
  FormFieldController<String>? tipoVeiculoValueController;
  // Stores action output result for [Backend Call - Insert Row] action in ButtonSalvar widget.
  CercaVirtualRow? inserirCerca;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    nomeCercaFocusNode?.dispose();
    nomeCercaTextController?.dispose();

    enderecoFocusNode?.dispose();
    enderecoTextController?.dispose();

    raioCercaFocusNode?.dispose();
    raioCercaTextController?.dispose();

    limiteVelocidadeFocusNode?.dispose();
    limiteVelocidadeTextController?.dispose();
  }
}
