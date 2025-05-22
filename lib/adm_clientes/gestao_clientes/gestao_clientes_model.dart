import '/adm_clientes/cliente/cliente_widget.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import '/custom_code/actions/index.dart' as actions;
import 'gestao_clientes_widget.dart' show GestaoClientesWidget;
import 'package:flutter/material.dart';

class GestaoClientesModel extends FlutterFlowModel<GestaoClientesWidget> {
  ///  Local state fields for this component.

  int total = 0;

  int paginaAtual = 1;

  int qtdPag = 9;

  List<UserStruct> users = [];
  void addToUsers(UserStruct item) => users.add(item);
  void removeFromUsers(UserStruct item) => users.remove(item);
  void removeAtIndexFromUsers(int index) => users.removeAt(index);
  void insertAtIndexInUsers(int index, UserStruct item) =>
      users.insert(index, item);
  void updateUsersAtIndex(int index, Function(UserStruct) updateFn) =>
      users[index] = updateFn(users[index]);

  int totalPaginas = 0;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  InstantTimer? instantTimer;
  // Models for cliente dynamic component.
  late FlutterFlowDynamicModels<ClienteModel> clienteModels1;
  // Models for cliente dynamic component.
  late FlutterFlowDynamicModels<ClienteModel> clienteModels2;
  // Models for cliente dynamic component.
  late FlutterFlowDynamicModels<ClienteModel> clienteModels3;

  @override
  void initState(BuildContext context) {
    clienteModels1 = FlutterFlowDynamicModels(() => ClienteModel());
    clienteModels2 = FlutterFlowDynamicModels(() => ClienteModel());
    clienteModels3 = FlutterFlowDynamicModels(() => ClienteModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    instantTimer?.cancel();
    clienteModels1.dispose();
    clienteModels2.dispose();
    clienteModels3.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {
    dynamic resultados;
    List<UserRow>? totalUsers;

    resultados = await actions.buscaPaginada(
      paginaAtual,
      qtdPag,
      textController.text,
    );
    totalUsers = await UserTable().queryRows(
      queryFn: (q) => q,
    );
    users = (resultados!
            .toList()
            .map<UserStruct?>(UserStruct.maybeFromMap)
            .toList() as Iterable<UserStruct?>)
        .withoutNulls
        .toList()
        .cast<UserStruct>();
    total = totalUsers.length;
    totalPaginas = valueOrDefault<int>(
      (valueOrDefault<int>(
                totalUsers.length,
                1,
              ) /
              qtdPag)
          .ceil(),
      1,
    );
  }
}
