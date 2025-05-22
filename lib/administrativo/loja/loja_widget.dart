import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/loja/loja_widget/loja_widget_widget.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'loja_model.dart';
export 'loja_model.dart';

class LojaWidget extends StatefulWidget {
  const LojaWidget({super.key});

  static String routeName = 'Loja';
  static String routePath = '/Loja';

  @override
  State<LojaWidget> createState() => _LojaWidgetState();
}

class _LojaWidgetState extends State<LojaWidget> {
  late LojaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LojaModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'Loja';
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

    return FutureBuilder<List<LojaRastreadoresRow>>(
      future:
          (_model.requestCompleter ??= Completer<List<LojaRastreadoresRow>>()
                ..complete(LojaRastreadoresTable().queryRows(
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
        List<LojaRastreadoresRow> lojaLojaRastreadoresRowList = snapshot.data!;

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
                  if (FFAppState().menuSelecionadoGeral == 'Loja')
                    Expanded(
                      child: wrapWithModel(
                        model: _model.lojaWidgetModel,
                        updateCallback: () => safeSetState(() {}),
                        child: LojaWidgetWidget(),
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
