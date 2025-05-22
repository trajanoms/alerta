import '/flutter_flow/flutter_flow_util.dart';
import 'configuracoes_usuario_widget.dart' show ConfiguracoesUsuarioWidget;
import 'package:flutter/material.dart';

class ConfiguracoesUsuarioModel
    extends FlutterFlowModel<ConfiguracoesUsuarioWidget> {
  ///  Local state fields for this component.

  List<String> listaUsuarios = ['Hello Worlds', 'Hello Worldd', 'Hello Worldf'];
  void addToListaUsuarios(String item) => listaUsuarios.add(item);
  void removeFromListaUsuarios(String item) => listaUsuarios.remove(item);
  void removeAtIndexFromListaUsuarios(int index) =>
      listaUsuarios.removeAt(index);
  void insertAtIndexInListaUsuarios(int index, String item) =>
      listaUsuarios.insert(index, item);
  void updateListaUsuariosAtIndex(int index, Function(String) updateFn) =>
      listaUsuarios[index] = updateFn(listaUsuarios[index]);

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
