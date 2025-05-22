import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'detalhes_produto_editar_widget.dart' show DetalhesProdutoEditarWidget;
import 'package:flutter/material.dart';

class DetalhesProdutoEditarModel
    extends FlutterFlowModel<DetalhesProdutoEditarWidget> {
  ///  Local state fields for this component.

  List<ListaIMGBancoStruct> listaIMG = [];
  void addToListaIMG(ListaIMGBancoStruct item) => listaIMG.add(item);
  void removeFromListaIMG(ListaIMGBancoStruct item) => listaIMG.remove(item);
  void removeAtIndexFromListaIMG(int index) => listaIMG.removeAt(index);
  void insertAtIndexInListaIMG(int index, ListaIMGBancoStruct item) =>
      listaIMG.insert(index, item);
  void updateListaIMGAtIndex(
          int index, Function(ListaIMGBancoStruct) updateFn) =>
      listaIMG[index] = updateFn(listaIMG[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
