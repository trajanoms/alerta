import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'modelos_notificacoes_widget.dart' show ModelosNotificacoesWidget;
import 'package:flutter/material.dart';

class ModelosNotificacoesModel
    extends FlutterFlowModel<ModelosNotificacoesWidget> {
  ///  Local state fields for this component.

  List<String> listmodelonotify = [
    'Hello Wdorld',
    'Hello Wsorld',
    'Hello Worlad'
  ];
  void addToListmodelonotify(String item) => listmodelonotify.add(item);
  void removeFromListmodelonotify(String item) => listmodelonotify.remove(item);
  void removeAtIndexFromListmodelonotify(int index) =>
      listmodelonotify.removeAt(index);
  void insertAtIndexInListmodelonotify(int index, String item) =>
      listmodelonotify.insert(index, item);
  void updateListmodelonotifyAtIndex(int index, Function(String) updateFn) =>
      listmodelonotify[index] = updateFn(listmodelonotify[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<List<ModelosNotificacaoRow>>? requestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}

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
