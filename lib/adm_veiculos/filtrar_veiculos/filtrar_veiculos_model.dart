import '/flutter_flow/flutter_flow_util.dart';
import 'filtrar_veiculos_widget.dart' show FiltrarVeiculosWidget;
import 'package:flutter/material.dart';

class FiltrarVeiculosModel extends FlutterFlowModel<FiltrarVeiculosWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  bool? checkboxValue2;
  // State field(s) for Checkbox widget.
  bool? checkboxValue3;
  // State field(s) for Checkbox widget.
  bool? checkboxValue4;
  // State field(s) for clienteVeiculo widget.
  final clienteVeiculoKey = GlobalKey();
  FocusNode? clienteVeiculoFocusNode;
  TextEditingController? clienteVeiculoTextController;
  String? clienteVeiculoSelectedOption;
  String? Function(BuildContext, String?)?
      clienteVeiculoTextControllerValidator;
  List<String> simpleSearchResults = [];
  // State field(s) for localidade widget.
  FocusNode? localidadeFocusNode;
  TextEditingController? localidadeTextController;
  String? Function(BuildContext, String?)? localidadeTextControllerValidator;
  // State field(s) for PeriodoInicio widget.
  FocusNode? periodoInicioFocusNode;
  TextEditingController? periodoInicioTextController;
  String? Function(BuildContext, String?)? periodoInicioTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for PeriodoFim widget.
  FocusNode? periodoFimFocusNode;
  TextEditingController? periodoFimTextController;
  String? Function(BuildContext, String?)? periodoFimTextControllerValidator;
  DateTime? datePicked2;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    clienteVeiculoFocusNode?.dispose();

    localidadeFocusNode?.dispose();
    localidadeTextController?.dispose();

    periodoInicioFocusNode?.dispose();
    periodoInicioTextController?.dispose();

    periodoFimFocusNode?.dispose();
    periodoFimTextController?.dispose();
  }
}
