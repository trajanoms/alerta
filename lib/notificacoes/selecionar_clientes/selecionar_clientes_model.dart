import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'selecionar_clientes_widget.dart' show SelecionarClientesWidget;
import 'package:flutter/material.dart';

class SelecionarClientesModel
    extends FlutterFlowModel<SelecionarClientesWidget> {
  ///  Local state fields for this component.

  List<String> listaUserNome = [];
  void addToListaUserNome(String item) => listaUserNome.add(item);
  void removeFromListaUserNome(String item) => listaUserNome.remove(item);
  void removeAtIndexFromListaUserNome(int index) =>
      listaUserNome.removeAt(index);
  void insertAtIndexInListaUserNome(int index, String item) =>
      listaUserNome.insert(index, item);
  void updateListaUserNomeAtIndex(int index, Function(String) updateFn) =>
      listaUserNome[index] = updateFn(listaUserNome[index]);

  List<String> listaUserUID = [];
  void addToListaUserUID(String item) => listaUserUID.add(item);
  void removeFromListaUserUID(String item) => listaUserUID.remove(item);
  void removeAtIndexFromListaUserUID(int index) => listaUserUID.removeAt(index);
  void insertAtIndexInListaUserUID(int index, String item) =>
      listaUserUID.insert(index, item);
  void updateListaUserUIDAtIndex(int index, Function(String) updateFn) =>
      listaUserUID[index] = updateFn(listaUserUID[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for Checkbox widget.
  bool? checkboxValue1;
  // State field(s) for Checkbox widget.
  Map<UserRow, bool> checkboxValueMap2 = {};
  List<UserRow> get checkboxCheckedItems2 => checkboxValueMap2.entries
      .where((e) => e.value)
      .map((e) => e.key)
      .toList();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
