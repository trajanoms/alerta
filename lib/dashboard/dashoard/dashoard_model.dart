import '/flutter_flow/flutter_flow_util.dart';
import 'dashoard_widget.dart' show DashoardWidget;
import 'package:flutter/material.dart';

class DashoardModel extends FlutterFlowModel<DashoardWidget> {
  ///  Local state fields for this component.

  int total = 0;

  int paginaAtual = 1;

  int qtdPag = 9;

  int totalPaginas = 0;

  List<int> listcliente = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12];
  void addToListcliente(int item) => listcliente.add(item);
  void removeFromListcliente(int item) => listcliente.remove(item);
  void removeAtIndexFromListcliente(int index) => listcliente.removeAt(index);
  void insertAtIndexInListcliente(int index, int item) =>
      listcliente.insert(index, item);
  void updateListclienteAtIndex(int index, Function(int) updateFn) =>
      listcliente[index] = updateFn(listcliente[index]);

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
