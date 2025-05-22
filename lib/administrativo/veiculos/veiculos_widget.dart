import '/adm_veiculos/cerca/cercas_virtuais/cercas_virtuais_widget.dart';
import '/adm_veiculos/gestao_veiculos/gestao_veiculos_widget.dart';
import '/adm_veiculos/gestao_veiculos_maps/gestao_veiculos_maps_widget.dart';
import '/adm_veiculos/hist_veiculo_jornada/hist_veiculo_jornada_widget.dart';
import '/adm_veiculos/historico_veiculo/historico_veiculo_widget.dart';
import '/adm_veiculos/ponto_interesse/ponto_interesse/ponto_interesse_widget.dart';
import '/adm_veiculos/rotas/rotas/rotas_widget.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'veiculos_model.dart';
export 'veiculos_model.dart';

class VeiculosWidget extends StatefulWidget {
  const VeiculosWidget({super.key});

  static String routeName = 'veiculos';
  static String routePath = '/veiculos';

  @override
  State<VeiculosWidget> createState() => _VeiculosWidgetState();
}

class _VeiculosWidgetState extends State<VeiculosWidget> {
  late VeiculosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => VeiculosModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().menuSelecionadoGeral = 'Veiculos';
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
              if (FFAppState().navegacaoTelasVeiculos == 'veiculos')
                Expanded(
                  child: wrapWithModel(
                    model: _model.gestaoVeiculosModel,
                    updateCallback: () => safeSetState(() {}),
                    child: GestaoVeiculosWidget(),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'veiculosMaps')
                Expanded(
                  child: wrapWithModel(
                    model: _model.gestaoVeiculosMapsModel,
                    updateCallback: () => safeSetState(() {}),
                    child: GestaoVeiculosMapsWidget(),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'histVeiculo')
                Expanded(
                  child: wrapWithModel(
                    model: _model.historicoVeiculoModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HistoricoVeiculoWidget(),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'cercaVirtual')
                Expanded(
                  child: wrapWithModel(
                    model: _model.cercasVirtuaisModel,
                    updateCallback: () => safeSetState(() {}),
                    child: CercasVirtuaisWidget(),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'jornadaVeiculo')
                Expanded(
                  child: wrapWithModel(
                    model: _model.histVeiculoJornadaModel,
                    updateCallback: () => safeSetState(() {}),
                    child: HistVeiculoJornadaWidget(
                      statusveiculo: FFAppState().veiculoID,
                    ),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'Rotas')
                Expanded(
                  child: wrapWithModel(
                    model: _model.rotasModel,
                    updateCallback: () => safeSetState(() {}),
                    child: RotasWidget(),
                  ),
                ),
              if (FFAppState().navegacaoTelasVeiculos == 'pontoInteresse')
                Expanded(
                  child: wrapWithModel(
                    model: _model.pontoInteresseModel,
                    updateCallback: () => safeSetState(() {}),
                    child: PontoInteresseWidget(),
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
