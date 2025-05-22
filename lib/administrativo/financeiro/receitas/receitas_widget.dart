import '/components/header_widget.dart';
import '/financeiro/financeiro_receita/financeiro_receita_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'receitas_model.dart';
export 'receitas_model.dart';

class ReceitasWidget extends StatefulWidget {
  const ReceitasWidget({super.key});

  static String routeName = 'receitas';
  static String routePath = '/receitas';

  @override
  State<ReceitasWidget> createState() => _ReceitasWidgetState();
}

class _ReceitasWidgetState extends State<ReceitasWidget> {
  late ReceitasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ReceitasModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionarFinanceiro = 'Receitas';
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
              if (FFAppState().menuSelecionarFinanceiro == 'Receitas')
                Expanded(
                  child: wrapWithModel(
                    model: _model.financeiroReceitaModel,
                    updateCallback: () => safeSetState(() {}),
                    child: FinanceiroReceitaWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
