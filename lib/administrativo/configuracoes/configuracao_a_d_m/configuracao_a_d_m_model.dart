import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/configuracoes/configuracoes_adm/configuracoes_adm_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'configuracao_a_d_m_widget.dart' show ConfiguracaoADMWidget;
import 'package:flutter/material.dart';

class ConfiguracaoADMModel extends FlutterFlowModel<ConfiguracaoADMWidget> {
  ///  Local state fields for this page.

  UserRow? clienteSelecionado;

  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for configuracoesAdm component.
  late ConfiguracoesAdmModel configuracoesAdmModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    configuracoesAdmModel = createModel(context, () => ConfiguracoesAdmModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    configuracoesAdmModel.dispose();
  }
}
