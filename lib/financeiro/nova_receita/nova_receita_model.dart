import '/flutter_flow/flutter_flow_util.dart';
import 'nova_receita_widget.dart' show NovaReceitaWidget;
import 'package:flutter/material.dart';

class NovaReceitaModel extends FlutterFlowModel<NovaReceitaWidget> {
  ///  Local state fields for this component.

  List<String> listaParceclas = [
    'Hello World3',
    'Hello World2',
    'Hello World1'
  ];
  void addToListaParceclas(String item) => listaParceclas.add(item);
  void removeFromListaParceclas(String item) => listaParceclas.remove(item);
  void removeAtIndexFromListaParceclas(int index) =>
      listaParceclas.removeAt(index);
  void insertAtIndexInListaParceclas(int index, String item) =>
      listaParceclas.insert(index, item);
  void updateListaParceclasAtIndex(int index, Function(String) updateFn) =>
      listaParceclas[index] = updateFn(listaParceclas[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
