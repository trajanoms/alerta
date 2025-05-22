import '/components/header_widget.dart';
import '/configuracoes/configuracoes_usuario/configuracoes_usuario_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'configuracao_usuario_model.dart';
export 'configuracao_usuario_model.dart';

class ConfiguracaoUsuarioWidget extends StatefulWidget {
  const ConfiguracaoUsuarioWidget({super.key});

  static String routeName = 'configuracaoUsuario';
  static String routePath = '/configuracaoUsuario';

  @override
  State<ConfiguracaoUsuarioWidget> createState() =>
      _ConfiguracaoUsuarioWidgetState();
}

class _ConfiguracaoUsuarioWidgetState extends State<ConfiguracaoUsuarioWidget> {
  late ConfiguracaoUsuarioModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracaoUsuarioModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'usuario';
      safeSetState(() {});
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              wrapWithModel(
                model: _model.headerModel,
                updateCallback: () => safeSetState(() {}),
                child: HeaderWidget(),
              ),
              Flexible(
                child: wrapWithModel(
                  model: _model.configuracoesUsuarioModel,
                  updateCallback: () => safeSetState(() {}),
                  child: ConfiguracoesUsuarioWidget(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
