import '/flutter_flow/flutter_flow_util.dart';
import 'bloquear_veiculo_copy_widget.dart' show BloquearVeiculoCopyWidget;
import 'package:flutter/material.dart';

class BloquearVeiculoCopyModel
    extends FlutterFlowModel<BloquearVeiculoCopyWidget> {
  ///  Local state fields for this component.

  String? consulta;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField12 widget.
  FocusNode? textField12FocusNode1;
  TextEditingController? textField12TextController1;
  String? Function(BuildContext, String?)? textField12TextController1Validator;
  DateTime? datePicked1;
  // State field(s) for TextField12 widget.
  FocusNode? textField12FocusNode2;
  TextEditingController? textField12TextController2;
  String? Function(BuildContext, String?)? textField12TextController2Validator;
  DateTime? datePicked2;
  // State field(s) for TextField12 widget.
  FocusNode? textField12FocusNode3;
  TextEditingController? textField12TextController3;
  String? Function(BuildContext, String?)? textField12TextController3Validator;
  DateTime? datePicked3;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textField12FocusNode1?.dispose();
    textField12TextController1?.dispose();

    textField12FocusNode2?.dispose();
    textField12TextController2?.dispose();

    textField12FocusNode3?.dispose();
    textField12TextController3?.dispose();
  }
}
