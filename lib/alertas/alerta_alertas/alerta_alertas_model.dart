import '/flutter_flow/flutter_flow_util.dart';
import 'alerta_alertas_widget.dart' show AlertaAlertasWidget;
import 'package:flutter/material.dart';

class AlertaAlertasModel extends FlutterFlowModel<AlertaAlertasWidget> {
  ///  Local state fields for this component.

  List<String> listNotify = ['Hello World2', 'Hello World3', 'Hello World1'];
  void addToListNotify(String item) => listNotify.add(item);
  void removeFromListNotify(String item) => listNotify.remove(item);
  void removeAtIndexFromListNotify(int index) => listNotify.removeAt(index);
  void insertAtIndexInListNotify(int index, String item) =>
      listNotify.insert(index, item);
  void updateListNotifyAtIndex(int index, Function(String) updateFn) =>
      listNotify[index] = updateFn(listNotify[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;
  int get tabBarPreviousIndex =>
      tabBarController != null ? tabBarController!.previousIndex : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tabBarController?.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
