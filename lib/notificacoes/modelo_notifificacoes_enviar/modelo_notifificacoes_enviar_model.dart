import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'modelo_notifificacoes_enviar_widget.dart'
    show ModeloNotifificacoesEnviarWidget;
import 'package:flutter/material.dart';

class ModeloNotifificacoesEnviarModel
    extends FlutterFlowModel<ModeloNotifificacoesEnviarWidget> {
  ///  Local state fields for this component.

  String? textoBuscar;

  List<String> todosClientesUID = [];
  void addToTodosClientesUID(String item) => todosClientesUID.add(item);
  void removeFromTodosClientesUID(String item) => todosClientesUID.remove(item);
  void removeAtIndexFromTodosClientesUID(int index) =>
      todosClientesUID.removeAt(index);
  void insertAtIndexInTodosClientesUID(int index, String item) =>
      todosClientesUID.insert(index, item);
  void updateTodosClientesUIDAtIndex(int index, Function(String) updateFn) =>
      todosClientesUID[index] = updateFn(todosClientesUID[index]);

  List<String> todosClientesNomes = [];
  void addToTodosClientesNomes(String item) => todosClientesNomes.add(item);
  void removeFromTodosClientesNomes(String item) =>
      todosClientesNomes.remove(item);
  void removeAtIndexFromTodosClientesNomes(int index) =>
      todosClientesNomes.removeAt(index);
  void insertAtIndexInTodosClientesNomes(int index, String item) =>
      todosClientesNomes.insert(index, item);
  void updateTodosClientesNomesAtIndex(int index, Function(String) updateFn) =>
      todosClientesNomes[index] = updateFn(todosClientesNomes[index]);

  int? contador = -1;

  bool agendar = false;

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
  DateTime? datePicked1;
  // State field(s) for horaEnvio widget.
  FocusNode? horaEnvioFocusNode;
  TextEditingController? horaEnvioTextController;
  String? Function(BuildContext, String?)? horaEnvioTextControllerValidator;
  DateTime? datePicked2;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserRow>? listauser;
  InstantTimer? instantTimer;

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

    horaEnvioFocusNode?.dispose();
    horaEnvioTextController?.dispose();

    instantTimer?.cancel();
  }

  /// Action blocks.
  Future atualizarLista(BuildContext context) async {}
}
