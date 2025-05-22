import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'detalhes_cliente_widget.dart' show DetalhesClienteWidget;
import 'package:flutter/material.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class DetalhesClienteModel extends FlutterFlowModel<DetalhesClienteWidget> {
  ///  Local state fields for this page.

  UserRow? clienteSelecionado;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  ///  State fields for stateful widgets in this page.

  final formKey3 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // Model for header component.
  late HeaderModel headerModel;
  // State field(s) for MouseRegionBasicos widget.
  bool mouseRegionBasicosHovered = false;
  // State field(s) for MouseRegionEndereco widget.
  bool mouseRegionEnderecoHovered = false;
  // State field(s) for MouseRegionCobrancao widget.
  bool mouseRegionCobrancaoHovered = false;
  // State field(s) for MouseRegionVeiculos widget.
  bool mouseRegionVeiculosHovered = false;
  // State field(s) for MouseRegionAssociados widget.
  bool mouseRegionAssociadosHovered = false;
  // State field(s) for MouseRegionAcesso widget.
  bool mouseRegionAcessoHovered = false;
  // State field(s) for nomeCompleto widget.
  FocusNode? nomeCompletoFocusNode;
  TextEditingController? nomeCompletoTextController;
  String? Function(BuildContext, String?)? nomeCompletoTextControllerValidator;
  // State field(s) for dataNascimento widget.
  FocusNode? dataNascimentoFocusNode1;
  TextEditingController? dataNascimentoTextController1;
  final dataNascimentoMask1 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataNascimentoTextController1Validator;
  DateTime? datePicked1;
  // State field(s) for TipoDoc widget.
  String? tipoDocValue;
  FormFieldController<String>? tipoDocValueController;
  // State field(s) for NumDoc widget.
  FocusNode? numDocFocusNode;
  TextEditingController? numDocTextController;
  String? Function(BuildContext, String?)? numDocTextControllerValidator;
  // State field(s) for Telefone widget.
  FocusNode? telefoneFocusNode;
  TextEditingController? telefoneTextController;
  final telefoneMask = MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)? telefoneTextControllerValidator;
  // State field(s) for RadioButtonTipoUser widget.
  FormFieldController<String>? radioButtonTipoUserValueController;
  // State field(s) for NomeContatoSecundario widget.
  FocusNode? nomeContatoSecundarioFocusNode;
  TextEditingController? nomeContatoSecundarioTextController;
  String? Function(BuildContext, String?)?
      nomeContatoSecundarioTextControllerValidator;
  // State field(s) for TelefoneContatoSec widget.
  FocusNode? telefoneContatoSecFocusNode;
  TextEditingController? telefoneContatoSecTextController;
  final telefoneContatoSecMask =
      MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)?
      telefoneContatoSecTextControllerValidator;
  // State field(s) for grauParentesco widget.
  String? grauParentescoValue;
  FormFieldController<String>? grauParentescoValueController;
  // State field(s) for RadioButtonFormaPgto widget.
  FormFieldController<String>? radioButtonFormaPgtoValueController;
  // State field(s) for dataNascimento widget.
  FocusNode? dataNascimentoFocusNode2;
  TextEditingController? dataNascimentoTextController2;
  final dataNascimentoMask2 = MaskTextInputFormatter(mask: '##/##/####');
  String? Function(BuildContext, String?)?
      dataNascimentoTextController2Validator;
  DateTime? datePicked2;
  // State field(s) for diaVencFatura widget.
  FocusNode? diaVencFaturaFocusNode;
  TextEditingController? diaVencFaturaTextController;
  String? Function(BuildContext, String?)? diaVencFaturaTextControllerValidator;
  // State field(s) for ParcelasContrato widget.
  String? parcelasContratoValue;
  FormFieldController<String>? parcelasContratoValueController;
  // State field(s) for DuracaoMesesContrato widget.
  FocusNode? duracaoMesesContratoFocusNode;
  TextEditingController? duracaoMesesContratoTextController;
  String? Function(BuildContext, String?)?
      duracaoMesesContratoTextControllerValidator;
  // State field(s) for SituacaoContrato widget.
  String? situacaoContratoValue;
  FormFieldController<String>? situacaoContratoValueController;
  // State field(s) for CheckboxSMS widget.
  bool? checkboxSMSValue;
  // State field(s) for CheckboxEMAIL widget.
  bool? checkboxEMAILValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController10;
  String? Function(BuildContext, String?)? textController10Validator;
  // State field(s) for CEP widget.
  FocusNode? cepFocusNode;
  TextEditingController? cepTextController;
  final cepMask = MaskTextInputFormatter(mask: '#####-###');
  String? Function(BuildContext, String?)? cepTextControllerValidator;
  // State field(s) for cidade widget.
  FocusNode? cidadeFocusNode;
  TextEditingController? cidadeTextController;
  String? Function(BuildContext, String?)? cidadeTextControllerValidator;
  // State field(s) for bairro widget.
  FocusNode? bairroFocusNode;
  TextEditingController? bairroTextController;
  String? Function(BuildContext, String?)? bairroTextControllerValidator;
  // State field(s) for Logradouro widget.
  FocusNode? logradouroFocusNode;
  TextEditingController? logradouroTextController;
  String? Function(BuildContext, String?)? logradouroTextControllerValidator;
  // State field(s) for numEnd widget.
  FocusNode? numEndFocusNode;
  TextEditingController? numEndTextController;
  final numEndMask = MaskTextInputFormatter(mask: '(##) # #### ####');
  String? Function(BuildContext, String?)? numEndTextControllerValidator;
  // State field(s) for TipoEnd widget.
  String? tipoEndValue;
  FormFieldController<String>? tipoEndValueController;
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

  // Stores action output result for [Backend Call - API (Recuperacao de senha)] action in BtnUploadLogo widget.
  ApiCallResponse? apiResult2eu;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    emailUserCadastroTextControllerValidator =
        _emailUserCadastroTextControllerValidator;
  }

  @override
  void dispose() {
    headerModel.dispose();
    nomeCompletoFocusNode?.dispose();
    nomeCompletoTextController?.dispose();

    dataNascimentoFocusNode1?.dispose();
    dataNascimentoTextController1?.dispose();

    numDocFocusNode?.dispose();
    numDocTextController?.dispose();

    telefoneFocusNode?.dispose();
    telefoneTextController?.dispose();

    nomeContatoSecundarioFocusNode?.dispose();
    nomeContatoSecundarioTextController?.dispose();

    telefoneContatoSecFocusNode?.dispose();
    telefoneContatoSecTextController?.dispose();

    dataNascimentoFocusNode2?.dispose();
    dataNascimentoTextController2?.dispose();

    diaVencFaturaFocusNode?.dispose();
    diaVencFaturaTextController?.dispose();

    duracaoMesesContratoFocusNode?.dispose();
    duracaoMesesContratoTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController10?.dispose();

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

    emailUserCadastroFocusNode?.dispose();
    emailUserCadastroTextController?.dispose();

    textFieldFocusNode2?.dispose();
    textController17?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonTipoUserValue =>
      radioButtonTipoUserValueController?.value;
  String? get radioButtonFormaPgtoValue =>
      radioButtonFormaPgtoValueController?.value;
}
