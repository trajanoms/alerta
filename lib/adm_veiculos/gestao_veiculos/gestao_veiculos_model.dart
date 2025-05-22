import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'gestao_veiculos_widget.dart' show GestaoVeiculosWidget;
import 'package:flutter/material.dart';

class GestaoVeiculosModel extends FlutterFlowModel<GestaoVeiculosWidget> {
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
  Future atualizarLista(BuildContext context) async {
    dynamic resultados;
    List<VeiculosRow>? totalVeiculos;

    resultados = await actions.buscaPaginadaVeiculos(
      paginaAtual,
      qtdPag,
      textController.text,
    );
    totalVeiculos = await VeiculosTable().queryRows(
      queryFn: (q) => q,
    );
    veiculos = (resultados!
            .toList()
            .map<VeiculosStruct?>(VeiculosStruct.maybeFromMap)
            .toList() as Iterable<VeiculosStruct?>)
        .withoutNulls
        .toList()
        .cast<VeiculosStruct>();
    total = totalVeiculos.length;
    totalPaginas = valueOrDefault<int>(
      (valueOrDefault<int>(
                totalVeiculos.length,
                1,
              ) /
              qtdPag)
          .ceil(),
      1,
    );
  }
}
