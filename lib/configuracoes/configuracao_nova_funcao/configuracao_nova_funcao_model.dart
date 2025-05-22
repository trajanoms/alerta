import '/flutter_flow/flutter_flow_util.dart';
import 'configuracao_nova_funcao_widget.dart' show ConfiguracaoNovaFuncaoWidget;
import 'package:flutter/material.dart';

class ConfiguracaoNovaFuncaoModel
    extends FlutterFlowModel<ConfiguracaoNovaFuncaoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
