import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/estoque/equipamentos/equipamentos_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'estoque_model.dart';
export 'estoque_model.dart';

class EstoqueWidget extends StatefulWidget {
  const EstoqueWidget({super.key});

  static String routeName = 'Estoque';
  static String routePath = '/estoque';

  @override
  State<EstoqueWidget> createState() => _EstoqueWidgetState();
}

class _EstoqueWidgetState extends State<EstoqueWidget> {
  late EstoqueModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EstoqueModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'Estoque';
      safeSetState(() {});
      safeSetState(() => _model.requestCompleter = null);
      await _model.waitForRequestCompleted();
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

    return FutureBuilder<List<RastreadoresRow>>(
      future: (_model.requestCompleter ??= Completer<List<RastreadoresRow>>()
            ..complete(RastreadoresTable().queryRows(
              queryFn: (q) => q,
            )))
          .future,
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<RastreadoresRow> estoqueRastreadoresRowList = snapshot.data!;

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
                  if (FFAppState().menuSelecionadoGeral == 'Estoque')
                    Expanded(
                      child: wrapWithModel(
                        model: _model.equipamentosModel,
                        updateCallback: () => safeSetState(() {}),
                        child: EquipamentosWidget(),
                      ),
                    ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
