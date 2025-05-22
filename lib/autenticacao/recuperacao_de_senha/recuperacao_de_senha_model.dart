import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'recuperacao_de_senha_widget.dart' show RecuperacaoDeSenhaWidget;
import 'package:flutter/material.dart';

class RecuperacaoDeSenhaModel
    extends FlutterFlowModel<RecuperacaoDeSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  // Stores action output result for [Backend Call - API (Recuperacao de senha)] action in Button widget.
  ApiCallResponse? apiResulttua;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();
  }
}
