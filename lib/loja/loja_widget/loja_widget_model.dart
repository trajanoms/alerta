import '/flutter_flow/flutter_flow_util.dart';
import 'loja_widget_widget.dart' show LojaWidgetWidget;
import 'package:flutter/material.dart';

class LojaWidgetModel extends FlutterFlowModel<LojaWidgetWidget> {
  ///  Local state fields for this component.

  int pageNum = 1;

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
