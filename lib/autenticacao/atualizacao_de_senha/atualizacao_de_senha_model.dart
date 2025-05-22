import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'atualizacao_de_senha_widget.dart' show AtualizacaoDeSenhaWidget;
import 'package:flutter/material.dart';

class AtualizacaoDeSenhaModel
    extends FlutterFlowModel<AtualizacaoDeSenhaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TextFieldNovaSenha widget.
  FocusNode? textFieldNovaSenhaFocusNode;
  TextEditingController? textFieldNovaSenhaTextController;
  late bool textFieldNovaSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldNovaSenhaTextControllerValidator;
  String? _textFieldNovaSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Forneça uma nova senha';
    }

    return null;
  }

  // State field(s) for TextFieldConfirmarSenha widget.
  FocusNode? textFieldConfirmarSenhaFocusNode;
  TextEditingController? textFieldConfirmarSenhaTextController;
  late bool textFieldConfirmarSenhaVisibility;
  String? Function(BuildContext, String?)?
      textFieldConfirmarSenhaTextControllerValidator;
  String? _textFieldConfirmarSenhaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Confirme uma nova senha';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Atualizar senha)] action in Button widget.
  ApiCallResponse? apiResultsaq;

  @override
  void initState(BuildContext context) {
    textFieldNovaSenhaVisibility = false;
    textFieldNovaSenhaTextControllerValidator =
        _textFieldNovaSenhaTextControllerValidator;
    textFieldConfirmarSenhaVisibility = false;
    textFieldConfirmarSenhaTextControllerValidator =
        _textFieldConfirmarSenhaTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNovaSenhaFocusNode?.dispose();
    textFieldNovaSenhaTextController?.dispose();

    textFieldConfirmarSenhaFocusNode?.dispose();
    textFieldConfirmarSenhaTextController?.dispose();
  }
}
