import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/configuracoes/configuracoes_usuario/configuracoes_usuario_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'configuracao_usuario_widget.dart' show ConfiguracaoUsuarioWidget;
import 'package:flutter/material.dart';

class ConfiguracaoUsuarioModel
    extends FlutterFlowModel<ConfiguracaoUsuarioWidget> {
  ///  Local state fields for this page.

  UserRow? clienteSelecionado;

  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for configuracoesUsuario component.
  late ConfiguracoesUsuarioModel configuracoesUsuarioModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    configuracoesUsuarioModel =
        createModel(context, () => ConfiguracoesUsuarioModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    configuracoesUsuarioModel.dispose();
  }
}
