import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import '/flutter_flow/instant_timer.dart';
import 'dart:async';
import 'notificacao_widget.dart' show NotificacaoWidget;
import 'package:flutter/material.dart';

class NotificacaoModel extends FlutterFlowModel<NotificacaoWidget> {
  ///  Local state fields for this component.

  List<String> listanotify = ['Hello Worlda', 'Hello Worldas', 'Hello Worldc'];
  void addToListanotify(String item) => listanotify.add(item);
  void removeFromListanotify(String item) => listanotify.remove(item);
  void removeAtIndexFromListanotify(int index) => listanotify.removeAt(index);
  void insertAtIndexInListanotify(int index, String item) =>
      listanotify.insert(index, item);
  void updateListanotifyAtIndex(int index, Function(String) updateFn) =>
      listanotify[index] = updateFn(listanotify[index]);

  bool? agendar = false;

  String? textoBusca;

  String? clienteSelecionadoUID;

  String? clienteSelecionadoNome;

  List<String> todoClienteUID = [];
  void addToTodoClienteUID(String item) => todoClienteUID.add(item);
  void removeFromTodoClienteUID(String item) => todoClienteUID.remove(item);
  void removeAtIndexFromTodoClienteUID(int index) =>
      todoClienteUID.removeAt(index);
  void insertAtIndexInTodoClienteUID(int index, String item) =>
      todoClienteUID.insert(index, item);
  void updateTodoClienteUIDAtIndex(int index, Function(String) updateFn) =>
      todoClienteUID[index] = updateFn(todoClienteUID[index]);

  List<String> todosClienteNome = [];
  void addToTodosClienteNome(String item) => todosClienteNome.add(item);
  void removeFromTodosClienteNome(String item) => todosClienteNome.remove(item);
  void removeAtIndexFromTodosClienteNome(int index) =>
      todosClienteNome.removeAt(index);
  void insertAtIndexInTodosClienteNome(int index, String item) =>
      todosClienteNome.insert(index, item);
  void updateTodosClienteNomeAtIndex(int index, Function(String) updateFn) =>
      todosClienteNome[index] = updateFn(todosClienteNome[index]);

  int? contador = -1;

  UserRow? nomeDoClienteSelecionado;

  List<String> listCliente = [];
  void addToListCliente(String item) => listCliente.add(item);
  void removeFromListCliente(String item) => listCliente.remove(item);
  void removeAtIndexFromListCliente(int index) => listCliente.removeAt(index);
  void insertAtIndexInListCliente(int index, String item) =>
      listCliente.insert(index, item);
  void updateListClienteAtIndex(int index, Function(String) updateFn) =>
      listCliente[index] = updateFn(listCliente[index]);

  List<String> listUID = [];
  void addToListUID(String item) => listUID.add(item);
  void removeFromListUID(String item) => listUID.remove(item);
  void removeAtIndexFromListUID(int index) => listUID.removeAt(index);
  void insertAtIndexInListUID(int index, String item) =>
      listUID.insert(index, item);
  void updateListUIDAtIndex(int index, Function(String) updateFn) =>
      listUID[index] = updateFn(listUID[index]);

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
  // State field(s) for CheckboxSalvar widget.
  bool? checkboxSalvarValue;
  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserRow>? listauser;
  InstantTimer? instantTimer;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController6;
  String? Function(BuildContext, String?)? textController6Validator;
  Completer<List<NotificacoesRow>>? requestCompleter;

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
    textFieldFocusNode4?.dispose();
    textController6?.dispose();
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
