import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/loja/loja_widget/loja_widget_widget.dart';
import 'dart:async';
import 'loja_widget.dart' show LojaWidget;
import 'package:flutter/material.dart';

class LojaModel extends FlutterFlowModel<LojaWidget> {
  ///  State fields for stateful widgets in this page.

  Completer<List<LojaRastreadoresRow>>? requestCompleter;
  // Model for header component.
  late HeaderModel headerModel;
  // Model for lojaWidget component.
  late LojaWidgetModel lojaWidgetModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    lojaWidgetModel = createModel(context, () => LojaWidgetModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    lojaWidgetModel.dispose();
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
