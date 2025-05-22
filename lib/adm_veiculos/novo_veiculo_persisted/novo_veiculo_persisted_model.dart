import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'novo_veiculo_persisted_widget.dart' show NovoVeiculoPersistedWidget;
import 'package:flutter/material.dart';

class NovoVeiculoPersistedModel
    extends FlutterFlowModel<NovoVeiculoPersistedWidget> {
  ///  Local state fields for this component.

  String? etapasCadastroVeiculo;

  bool permitirCadastroRastreadores = false;

  Color? selectColor = Color(4294819857);

  bool permitirBloqVeiculos = false;

  DateTime? dataVencimento;

  ///  State fields for stateful widgets in this component.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for clienteVeiculo widget.
  final clienteVeiculoKey = GlobalKey();
  FocusNode? clienteVeiculoFocusNode;
  TextEditingController? clienteVeiculoTextController;
  String? clienteVeiculoSelectedOption;
  String? Function(BuildContext, String?)?
      clienteVeiculoTextControllerValidator;
  String? _clienteVeiculoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }
    if (val != clienteVeiculoSelectedOption) {
      return 'Please choose an option from the dropdown';
    }

    return null;
  }

  List<String> simpleSearchResults1 = [];
  // State field(s) for loop widget.
  String? loopValue;
  FormFieldController<String>? loopValueController;
  // State field(s) for TipoVeiculo widget.
  String? tipoVeiculoValue;
  FormFieldController<String>? tipoVeiculoValueController;
  // State field(s) for marca widget.
  FocusNode? marcaFocusNode;
  TextEditingController? marcaTextController;
  String? Function(BuildContext, String?)? marcaTextControllerValidator;
  String? _marcaTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for cor widget.
  FocusNode? corFocusNode;
  TextEditingController? corTextController;
  String? Function(BuildContext, String?)? corTextControllerValidator;
  String? _corTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for ano widget.
  FocusNode? anoFocusNode;
  TextEditingController? anoTextController;
  String? Function(BuildContext, String?)? anoTextControllerValidator;
  String? _anoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for hodometro widget.
  FocusNode? hodometroFocusNode;
  TextEditingController? hodometroTextController;
  String? Function(BuildContext, String?)? hodometroTextControllerValidator;
  String? _hodometroTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for modelo widget.
  FocusNode? modeloFocusNode;
  TextEditingController? modeloTextController;
  String? Function(BuildContext, String?)? modeloTextControllerValidator;
  String? _modeloTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obrigatório';
    }

    return null;
  }

  // State field(s) for ResponsavelMotorista widget.
  final responsavelMotoristaKey = GlobalKey();
  FocusNode? responsavelMotoristaFocusNode;
  TextEditingController? responsavelMotoristaTextController;
  String? responsavelMotoristaSelectedOption;
  String? Function(BuildContext, String?)?
      responsavelMotoristaTextControllerValidator;
  List<String> simpleSearchResults2 = [];
  // State field(s) for CBRastreadorMovimento widget.
  bool? cBRastreadorMovimentoValue;
  // State field(s) for CBIgnicaoLigada widget.
  bool? cBIgnicaoLigadaValue;
  // State field(s) for CBIgnicaoDesligada widget.
  bool? cBIgnicaoDesligadaValue;
  // State field(s) for CBCercaVirtual widget.
  bool? cBCercaVirtualValue;
  // State field(s) for CBLimiteVelocidade widget.
  bool? cBLimiteVelocidadeValue1;
  // State field(s) for CBBateriaFraca widget.
  bool? cBBateriaFracaValue;
  // State field(s) for CBDeconectadoEnergia widget.
  bool? cBDeconectadoEnergiaValue;
  // State field(s) for CBLimiteVelocidade widget.
  bool? cBLimiteVelocidadeValue2;
  // State field(s) for CBAlertaMovimento widget.
  bool? cBAlertaMovimentoValue;
  // State field(s) for CBBloqueioVeiculo widget.
  bool? cBBloqueioVeiculoValue;

  @override
  void initState(BuildContext context) {
    clienteVeiculoTextControllerValidator =
        _clienteVeiculoTextControllerValidator;
    marcaTextControllerValidator = _marcaTextControllerValidator;
    corTextControllerValidator = _corTextControllerValidator;
    anoTextControllerValidator = _anoTextControllerValidator;
    hodometroTextControllerValidator = _hodometroTextControllerValidator;
    modeloTextControllerValidator = _modeloTextControllerValidator;
  }

  @override
  void dispose() {
    clienteVeiculoFocusNode?.dispose();

    marcaFocusNode?.dispose();
    marcaTextController?.dispose();

    corFocusNode?.dispose();
    corTextController?.dispose();

    anoFocusNode?.dispose();
    anoTextController?.dispose();

    hodometroFocusNode?.dispose();
    hodometroTextController?.dispose();

    modeloFocusNode?.dispose();
    modeloTextController?.dispose();

    responsavelMotoristaFocusNode?.dispose();
  }
}
