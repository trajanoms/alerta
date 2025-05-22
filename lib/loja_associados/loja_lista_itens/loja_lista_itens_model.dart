import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'loja_lista_itens_widget.dart' show LojaListaItensWidget;
import 'package:flutter/material.dart';

class LojaListaItensModel extends FlutterFlowModel<LojaListaItensWidget> {
  ///  Local state fields for this component.

  int total = 0;

  int paginaAtual = 1;

  int qtdPag = 9;

  int totalPaginas = 0;

  List<LojaStruct> listprod = [];
  void addToListprod(LojaStruct item) => listprod.add(item);
  void removeFromListprod(LojaStruct item) => listprod.remove(item);
  void removeAtIndexFromListprod(int index) => listprod.removeAt(index);
  void insertAtIndexInListprod(int index, LojaStruct item) =>
      listprod.insert(index, item);
  void updateListprodAtIndex(int index, Function(LojaStruct) updateFn) =>
      listprod[index] = updateFn(listprod[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  InstantTimer? instantTimer;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    instantTimer?.cancel();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
