import '/components/header_widget.dart';
import '/financeiro/financeiro_despesas/financeiro_despesas_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'despesas_model.dart';
export 'despesas_model.dart';

class DespesasWidget extends StatefulWidget {
  const DespesasWidget({super.key});

  static String routeName = 'despesas';
  static String routePath = '/despesas';

  @override
  State<DespesasWidget> createState() => _DespesasWidgetState();
}

class _DespesasWidgetState extends State<DespesasWidget> {
  late DespesasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DespesasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionarFinanceiro = 'Despesas';
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
              if (FFAppState().menuSelecionarFinanceiro == 'Despesas')
                Expanded(
                  child: wrapWithModel(
                    model: _model.financeiroDespesasModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FinanceiroDespesasWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
