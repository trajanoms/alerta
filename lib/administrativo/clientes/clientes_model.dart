import '/adm_clientes/gestao_clientes/gestao_clientes_widget.dart';
import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'clientes_widget.dart' show ClientesWidget;
import 'dart:async';
import 'package:flutter/material.dart';

class ClientesModel extends FlutterFlowModel<ClientesWidget> {
  ///  Local state fields for this page.

  UserRow? clienteSelecionado;

  ///  State fields for stateful widgets in this page.

  Completer<List<UserRow>>? requestCompleter;
  // Model for header component.
  late HeaderModel headerModel;
  // Model for gestaoClientes component.
  late GestaoClientesModel gestaoClientesModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    gestaoClientesModel = createModel(context, () => GestaoClientesModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    gestaoClientesModel.dispose();
  }

  /// Additional helper methods.
  Future waitForRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = requestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
