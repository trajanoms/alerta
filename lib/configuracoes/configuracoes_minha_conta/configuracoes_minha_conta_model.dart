import '/flutter_flow/flutter_flow_util.dart';
import 'configuracoes_minha_conta_widget.dart'
    show ConfiguracoesMinhaContaWidget;
import 'package:flutter/material.dart';

class ConfiguracoesMinhaContaModel
    extends FlutterFlowModel<ConfiguracoesMinhaContaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
