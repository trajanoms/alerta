import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/estoque/equipamentos/equipamentos_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'estoque_widget.dart' show EstoqueWidget;
import 'package:flutter/material.dart';

class EstoqueModel extends FlutterFlowModel<EstoqueWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<RastreadoresRow>>? requestCompleter;
  // Model for header component.
  late HeaderModel headerModel;
  // Model for Equipamentos component.
  late EquipamentosModel equipamentosModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    equipamentosModel = createModel(context, () => EquipamentosModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    equipamentosModel.dispose();
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
