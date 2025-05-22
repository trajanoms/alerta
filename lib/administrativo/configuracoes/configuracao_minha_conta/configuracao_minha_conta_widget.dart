import '/components/header_widget.dart';
import '/configuracoes/configuracoes_minha_conta/configuracoes_minha_conta_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'configuracao_minha_conta_model.dart';
export 'configuracao_minha_conta_model.dart';

class ConfiguracaoMinhaContaWidget extends StatefulWidget {
  const ConfiguracaoMinhaContaWidget({super.key});

  static String routeName = 'configuracaoMinhaConta';
  static String routePath = '/configuracaoMinhaConta';

  @override
  State<ConfiguracaoMinhaContaWidget> createState() =>
      _ConfiguracaoMinhaContaWidgetState();
}

class _ConfiguracaoMinhaContaWidgetState
    extends State<ConfiguracaoMinhaContaWidget> {
  late ConfiguracaoMinhaContaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracaoMinhaContaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'minhaConta';
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
              if (FFAppState().menuSelecionadoGeral == 'minhaConta')
                Expanded(
                  child: wrapWithModel(
                    model: _model.configuracoesMinhaContaModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ConfiguracoesMinhaContaWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
