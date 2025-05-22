import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'cadastro_rastreador_widget.dart' show CadastroRastreadorWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CadastroRastreadorModel
    extends FlutterFlowModel<CadastroRastreadorWidget> {
  ///  Local state fields for this component.

  bool botaoPanico = false;

  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for IMEI widget.
  FocusNode? imeiFocusNode;
  TextEditingController? imeiTextController;
  String? Function(BuildContext, String?)? imeiTextControllerValidator;
  String? _imeiTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for modeloRastreador widget.
  FocusNode? modeloRastreadorFocusNode;
  TextEditingController? modeloRastreadorTextController;
  String? Function(BuildContext, String?)?
      modeloRastreadorTextControllerValidator;
  // State field(s) for chipSim widget.
  FocusNode? chipSimFocusNode;
  TextEditingController? chipSimTextController;
  final chipSimMask = MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)? chipSimTextControllerValidator;
  String? _chipSimTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for EmpresaChip widget.
  String? empresaChipValue;
  FormFieldController<String>? empresaChipValueController;
  // State field(s) for operadora widget.
  String? operadoraValue;
  FormFieldController<String>? operadoraValueController;
  // State field(s) for IgnicaoVirtual widget.
  String? ignicaoVirtualValue;
  FormFieldController<String>? ignicaoVirtualValueController;
  // State field(s) for tipoIgnicao widget.
  String? tipoIgnicaoValue;
  FormFieldController<String>? tipoIgnicaoValueController;
  // Stores action output result for [Backend Call - Insert Row] action in ButtonConcluir widget.
  RastreadoresRow? novoRastreador;

  @override
  void initState(BuildContext context) {
    imeiTextControllerValidator = _imeiTextControllerValidator;
    chipSimTextControllerValidator = _chipSimTextControllerValidator;
  }

  @override
  void dispose() {
    imeiFocusNode?.dispose();
    imeiTextController?.dispose();

    modeloRastreadorFocusNode?.dispose();
    modeloRastreadorTextController?.dispose();

    chipSimFocusNode?.dispose();
    chipSimTextController?.dispose();
  }
}
