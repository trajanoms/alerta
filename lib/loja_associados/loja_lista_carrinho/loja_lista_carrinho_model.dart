import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'loja_lista_carrinho_widget.dart' show LojaListaCarrinhoWidget;
import 'package:flutter/material.dart';

class LojaListaCarrinhoModel extends FlutterFlowModel<LojaListaCarrinhoWidget> {
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

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
