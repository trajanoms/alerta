import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_cliente_widget.dart' show NovoClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class NovoClienteModel extends FlutterFlowModel<NovoClienteWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroCliente;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  int? contador = 0;

  ///  State fields for stateful widgets in this component.

  final formKey2 = GlobalKey<FormState>();
  final formKey4 = GlobalKey<FormState>();
  final formKey5 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
  final formKey6 = GlobalKey<FormState>();
  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  String? _nomeCompletoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for dataNascimento widget.
  FocusNode? dataNascimentoFocusNode;
  TextEditingController? dataNascimentoTextController;
  String? Function(BuildContext, String?)?
      dataNascimentoTextControllerValidator;
  String? _dataNascimentoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  DateTime? datePicked1;
  // State field(s) for TipoDoc widget.
  String? tipoDocValue;
  FormFieldController<String>? tipoDocValueController;
  // State field(s) for NumDoc widget.
  FocusNode? numDocFocusNode;
  TextEditingController? numDocTextController;
  String? Function(BuildContext, String?)? numDocTextControllerValidator;
  String? _numDocTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  String? _telefoneTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for RadioButtonTipoUser widget.
  FormFieldController<String>? radioButtonTipoUserValueController;
  // State field(s) for NomeContatoSecundario widget.
  FocusNode? nomeContatoSecundarioFocusNode;
  TextEditingController? nomeContatoSecundarioTextController;
  String? Function(BuildContext, String?)?
      nomeContatoSecundarioTextControllerValidator;
  String? _nomeContatoSecundarioTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TelefoneContatoSec widget.
  FocusNode? telefoneContatoSecFocusNode;
  TextEditingController? telefoneContatoSecTextController;
  final telefoneContatoSecMask =
      MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)?
      telefoneContatoSecTextControllerValidator;
  String? _telefoneContatoSecTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for GrauParentesco widget.
  String? grauParentescoValue;
  FormFieldController<String>? grauParentescoValueController;
  // State field(s) for CEP widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  String? _cepTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (Busca CEP)] action in CEP widget.
  ApiCallResponse? apiResultho7;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  String? _cidadeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  String? _bairroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for Logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroTextController;
  String? Function(BuildContext, String?)? logradouroTextControllerValidator;
  String? _logradouroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for numEnd widget.
  FocusNode? numEndFocusNode;
  TextEditingController? numEndTextController;
  String? Function(BuildContext, String?)? numEndTextControllerValidator;
  String? _numEndTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for TipoEnd widget.
  String? tipoEndValue;
  FormFieldController<String>? tipoEndValueController;
  // State field(s) for RadioButtonFormaPgto widget.
  FormFieldController<String>? radioButtonFormaPgtoValueController;
  // State field(s) for dataContrato widget.
  FocusNode? dataContratoFocusNode;
  TextEditingController? dataContratoTextController;
  String? Function(BuildContext, String?)? dataContratoTextControllerValidator;
  String? _dataContratoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  DateTime? datePicked2;
  // State field(s) for mesesContrato widget.
  FocusNode? mesesContratoFocusNode;
  TextEditingController? mesesContratoTextController;
  String? Function(BuildContext, String?)? mesesContratoTextControllerValidator;
  String? _mesesContratoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for diaVencFatura widget.
  FocusNode? diaVencFaturaFocusNode;
  TextEditingController? diaVencFaturaTextController;
  String? Function(BuildContext, String?)? diaVencFaturaTextControllerValidator;
  String? _diaVencFaturaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for ParcelasContrato widget.
  String? parcelasContratoValue;
  FormFieldController<String>? parcelasContratoValueController;
  Color? colorPicked;
  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for EmailUserCadastro widget.
  FocusNode? emailUserCadastroFocusNode;
  TextEditingController? emailUserCadastroTextController;
  String? Function(BuildContext, String?)?
      emailUserCadastroTextControllerValidator;
  String? _emailUserCadastroTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for SenhaUserCadastro widget.
  FocusNode? senhaUserCadastroFocusNode;
  TextEditingController? senhaUserCadastroTextController;
  late bool senhaUserCadastroVisibility;
  String? Function(BuildContext, String?)?
      senhaUserCadastroTextControllerValidator;
  // Stores action output result for [Backend Call - API (Criar Usuario)] action in ButtonCobranca widget.
  ApiCallResponse? userCriadoApi;
  // Stores action output result for [Backend Call - API (POST criar cliente)] action in ButtonCobranca widget.
  ApiCallResponse? criarAsaasID;
  // Stores action output result for [Backend Call - Insert Row] action in ButtonCobranca widget.
  UserRow? us;

  @override
  void initState(BuildContext context) {
    nomeCompletoTextControllerValidator = _nomeCompletoTextControllerValidator;
    dataNascimentoTextControllerValidator =
        _dataNascimentoTextControllerValidator;
    numDocTextControllerValidator = _numDocTextControllerValidator;
    telefoneTextControllerValidator = _telefoneTextControllerValidator;
    nomeContatoSecundarioTextControllerValidator =
        _nomeContatoSecundarioTextControllerValidator;
    telefoneContatoSecTextControllerValidator =
        _telefoneContatoSecTextControllerValidator;
    cepTextControllerValidator = _cepTextControllerValidator;
    cidadeTextControllerValidator = _cidadeTextControllerValidator;
    bairroTextControllerValidator = _bairroTextControllerValidator;
    logradouroTextControllerValidator = _logradouroTextControllerValidator;
    numEndTextControllerValidator = _numEndTextControllerValidator;
    dataContratoTextControllerValidator = _dataContratoTextControllerValidator;
    mesesContratoTextControllerValidator =
        _mesesContratoTextControllerValidator;
    diaVencFaturaTextControllerValidator =
        _diaVencFaturaTextControllerValidator;
    emailUserCadastroTextControllerValidator =
        _emailUserCadastroTextControllerValidator;
    senhaUserCadastroVisibility = false;
  }

  @override
  void dispose() {
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    dataNascimentoFocusNode?.dispose();
    dataNascimentoTextController?.dispose();

    numDocFocusNode?.dispose();
    numDocTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nomeContatoSecundarioFocusNode?.dispose();
    nomeContatoSecundarioTextController?.dispose();

    telefoneContatoSecFocusNode?.dispose();
    telefoneContatoSecTextController?.dispose();

    cepFocusNode?.dispose();
    cepTextController?.dispose();

    cidadeFocusNode?.dispose();
    cidadeTextController?.dispose();

    bairroFocusNode?.dispose();
    bairroTextController?.dispose();

    logradouroFocusNode?.dispose();
    logradouroTextController?.dispose();

    numEndFocusNode?.dispose();
    numEndTextController?.dispose();

    dataContratoFocusNode?.dispose();
    dataContratoTextController?.dispose();

    mesesContratoFocusNode?.dispose();
    mesesContratoTextController?.dispose();

    diaVencFaturaFocusNode?.dispose();
    diaVencFaturaTextController?.dispose();

    emailUserCadastroFocusNode?.dispose();
    emailUserCadastroTextController?.dispose();

    senhaUserCadastroFocusNode?.dispose();
    senhaUserCadastroTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonTipoUserValue =>
      radioButtonTipoUserValueController?.value;
  String? get radioButtonFormaPgtoValue =>
      radioButtonFormaPgtoValueController?.value;
}
