import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/notificacoes/notificacao/notificacao_widget.dart';
import 'notificacoes_widget.dart' show NotificacoesWidget;
import 'package:flutter/material.dart';

class NotificacoesModel extends FlutterFlowModel<NotificacoesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for notificacao component.
  late NotificacaoModel notificacaoModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    notificacaoModel = createModel(context, () => NotificacaoModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    notificacaoModel.dispose();
  }
}
