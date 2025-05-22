import '/components/header_widget.dart';
import '/configuracoes/configuracoes_adm/configuracoes_adm_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'configuracao_a_d_m_model.dart';
export 'configuracao_a_d_m_model.dart';

class ConfiguracaoADMWidget extends StatefulWidget {
  const ConfiguracaoADMWidget({super.key});

  static String routeName = 'configuracaoADM';
  static String routePath = '/configuracoes';

  @override
  State<ConfiguracaoADMWidget> createState() => _ConfiguracaoADMWidgetState();
}

class _ConfiguracaoADMWidgetState extends State<ConfiguracaoADMWidget> {
  late ConfiguracaoADMModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ConfiguracaoADMModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'Fadministrativas';
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
              if (FFAppState().menuSelecionadoGeral == 'Fadministrativas')
                Flexible(
                  child: wrapWithModel(
                    model: _model.configuracoesAdmModel,
                    updateCallback: () => safeSetState(() {}),
                    child: ConfiguracoesAdmWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
