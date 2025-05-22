import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'configuracao_editar_usuario_widget.dart'
    show ConfiguracaoEditarUsuarioWidget;
import 'package:flutter/material.dart';

class ConfiguracaoEditarUsuarioModel
    extends FlutterFlowModel<ConfiguracaoEditarUsuarioWidget> {
  ///  Local state fields for this component.

  bool permissao1 = false;

  bool permissao2 = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;

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
