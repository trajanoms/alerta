import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'notificacao_envio_ativo_widget.dart' show NotificacaoEnvioAtivoWidget;
import 'package:flutter/material.dart';

class NotificacaoEnvioAtivoModel
    extends FlutterFlowModel<NotificacaoEnvioAtivoWidget> {
  ///  Local state fields for this component.

  List<String> listnotifyativo = [
    'Hello World44',
    'Hello World2',
    'Hello World1'
  ];
  void addToListnotifyativo(String item) => listnotifyativo.add(item);
  void removeFromListnotifyativo(String item) => listnotifyativo.remove(item);
  void removeAtIndexFromListnotifyativo(int index) =>
      listnotifyativo.removeAt(index);
  void insertAtIndexInListnotifyativo(int index, String item) =>
      listnotifyativo.insert(index, item);
  void updateListnotifyativoAtIndex(int index, Function(String) updateFn) =>
      listnotifyativo[index] = updateFn(listnotifyativo[index]);

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for dataEnvio widget.
  FocusNode? dataEnvioFocusNode;
  TextEditingController? dataEnvioTextController;
  String? Function(BuildContext, String?)? dataEnvioTextControllerValidator;
  DateTime? datePicked;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();

    textFieldFocusNode3?.dispose();
    textController3?.dispose();

    dataEnvioFocusNode?.dispose();
    dataEnvioTextController?.dispose();

    textFieldFocusNode4?.dispose();
    textController5?.dispose();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
