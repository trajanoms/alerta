import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'financeiro_receita_widget.dart' show FinanceiroReceitaWidget;
import 'package:flutter/material.dart';

class FinanceiroReceitaModel extends FlutterFlowModel<FinanceiroReceitaWidget> {
  ///  Local state fields for this component.

  int total = 0;

  int paginaAtual = 1;

  int qtdPag = 9;

  int totalPaginas = 0;

  List<String> listcliente = ['Hello World3', 'Hello World2', 'Hello World1'];
  void addToListcliente(String item) => listcliente.add(item);
  void removeFromListcliente(String item) => listcliente.remove(item);
  void removeAtIndexFromListcliente(int index) => listcliente.removeAt(index);
  void insertAtIndexInListcliente(int index, String item) =>
      listcliente.insert(index, item);
  void updateListclienteAtIndex(int index, Function(String) updateFn) =>
      listcliente[index] = updateFn(listcliente[index]);

  List<ParcelasFinanceirasRow> listaPrevisto = [];
  void addToListaPrevisto(ParcelasFinanceirasRow item) =>
      listaPrevisto.add(item);
  void removeFromListaPrevisto(ParcelasFinanceirasRow item) =>
      listaPrevisto.remove(item);
  void removeAtIndexFromListaPrevisto(int index) =>
      listaPrevisto.removeAt(index);
  void insertAtIndexInListaPrevisto(int index, ParcelasFinanceirasRow item) =>
      listaPrevisto.insert(index, item);
  void updateListaPrevistoAtIndex(
          int index, Function(ParcelasFinanceirasRow) updateFn) =>
      listaPrevisto[index] = updateFn(listaPrevisto[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
