import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'rotas_widget.dart' show RotasWidget;
import 'package:flutter/material.dart';

class RotasModel extends FlutterFlowModel<RotasWidget> {
  ///  Local state fields for this component.

  int total = 0;

  int paginaAtual = 1;

  int qtdPag = 9;

  List<VeiculosStruct> veiculos = [];
  void addToVeiculos(VeiculosStruct item) => veiculos.add(item);
  void removeFromVeiculos(VeiculosStruct item) => veiculos.remove(item);
  void removeAtIndexFromVeiculos(int index) => veiculos.removeAt(index);
  void insertAtIndexInVeiculos(int index, VeiculosStruct item) =>
      veiculos.insert(index, item);
  void updateVeiculosAtIndex(int index, Function(VeiculosStruct) updateFn) =>
      veiculos[index] = updateFn(veiculos[index]);

  int totalPaginas = 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
