import '/components/header_widget.dart';
import '/configuracoes/configuracoes_minha_conta/configuracoes_minha_conta_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'configuracao_minha_conta_widget.dart' show ConfiguracaoMinhaContaWidget;
import 'package:flutter/material.dart';

class ConfiguracaoMinhaContaModel
    extends FlutterFlowModel<ConfiguracaoMinhaContaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for configuracoesMinhaConta component.
  late ConfiguracoesMinhaContaModel configuracoesMinhaContaModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    configuracoesMinhaContaModel =
        createModel(context, () => ConfiguracoesMinhaContaModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    configuracoesMinhaContaModel.dispose();
  }
}
