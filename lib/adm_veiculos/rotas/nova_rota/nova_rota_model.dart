import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nova_rota_widget.dart' show NovaRotaWidget;
import 'package:flutter/material.dart';

class NovaRotaModel extends FlutterFlowModel<NovaRotaWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroVeiculo;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  String? rotaID = '';

  String? latPartida = '0';

  String? logPartida = '0';

  String? latChegada = '0';

  String? longChegada = '0';

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  // State field(s) for nomeCerca widget.
  FocusNode? nomeCercaFocusNode;
  TextEditingController? nomeCercaTextController;
  String? Function(BuildContext, String?)? nomeCercaTextControllerValidator;
  // State field(s) for notify widget.
  bool? notifyValue;
  // State field(s) for ToleranciaparaAlertas widget.
  String? toleranciaparaAlertasValue;
  FormFieldController<String>? toleranciaparaAlertasValueController;
  // State field(s) for Situacao widget.
  String? situacaoValue;
  FormFieldController<String>? situacaoValueController;
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue1 = FFPlace();
  // State field(s) for PlacePicker widget.
  FFPlace placePickerValue2 = FFPlace();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // Stores action output result for [Backend Call - Insert Row] action in ButtonSalvar widget.
  RotasRow? insercaoRota;
  // State field(s) for SwitchSeg widget.
  bool? switchSegValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue1;
  FormFieldController<String>? aoEntrarValueController1;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue2;
  FormFieldController<String>? aoEntrarValueController2;
  // State field(s) for SwitchTer widget.
  bool? switchTerValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue3;
  FormFieldController<String>? aoEntrarValueController3;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue4;
  FormFieldController<String>? aoEntrarValueController4;
  // State field(s) for SwitchQuarta widget.
  bool? switchQuartaValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue5;
  FormFieldController<String>? aoEntrarValueController5;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue6;
  FormFieldController<String>? aoEntrarValueController6;
  // State field(s) for SwitchQuinta widget.
  bool? switchQuintaValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue7;
  FormFieldController<String>? aoEntrarValueController7;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue8;
  FormFieldController<String>? aoEntrarValueController8;
  // State field(s) for SwitchSexta widget.
  bool? switchSextaValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue9;
  FormFieldController<String>? aoEntrarValueController9;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue10;
  FormFieldController<String>? aoEntrarValueController10;
  // State field(s) for SwitchSabado widget.
  bool? switchSabadoValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue11;
  FormFieldController<String>? aoEntrarValueController11;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue12;
  FormFieldController<String>? aoEntrarValueController12;
  // State field(s) for SwitchDomingo widget.
  bool? switchDomingoValue;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue13;
  FormFieldController<String>? aoEntrarValueController13;
  // State field(s) for aoEntrar widget.
  String? aoEntrarValue14;
  FormFieldController<String>? aoEntrarValueController14;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
    nomeCercaFocusNode?.dispose();
    nomeCercaTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();
  }
}
