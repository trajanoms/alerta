import '/flutter_flow/flutter_flow_util.dart';
import 'modal_notify_widget.dart' show ModalNotifyWidget;
import 'package:flutter/material.dart';

class ModalNotifyModel extends FlutterFlowModel<ModalNotifyWidget> {
  ///  Local state fields for this component.

  List<String> listNotify = ['Hello World2', 'Hello World3', 'Hello World1'];
  void addToListNotify(String item) => listNotify.add(item);
  void removeFromListNotify(String item) => listNotify.remove(item);
  void removeAtIndexFromListNotify(int index) => listNotify.removeAt(index);
  void insertAtIndexInListNotify(int index, String item) =>
      listNotify.insert(index, item);
  void updateListNotifyAtIndex(int index, Function(String) updateFn) =>
      listNotify[index] = updateFn(listNotify[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
