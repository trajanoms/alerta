import '/adm_veiculos/cerca/cercas_virtuais/cercas_virtuais_widget.dart';
import '/adm_veiculos/gestao_veiculos/gestao_veiculos_widget.dart';
import '/adm_veiculos/gestao_veiculos_maps/gestao_veiculos_maps_widget.dart';
import '/adm_veiculos/hist_veiculo_jornada/hist_veiculo_jornada_widget.dart';
import '/adm_veiculos/historico_veiculo/historico_veiculo_widget.dart';
import '/adm_veiculos/ponto_interesse/ponto_interesse/ponto_interesse_widget.dart';
import '/adm_veiculos/rotas/rotas/rotas_widget.dart';
import '/backend/supabase/supabase.dart';
import '/components/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'veiculos_widget.dart' show VeiculosWidget;
import 'package:flutter/material.dart';

class VeiculosModel extends FlutterFlowModel<VeiculosWidget> {
  ///  Local state fields for this page.

  UserRow? clienteSelecionado;

  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for gestaoVeiculos component.
  late GestaoVeiculosModel gestaoVeiculosModel;
  // Model for gestaoVeiculosMaps component.
  late GestaoVeiculosMapsModel gestaoVeiculosMapsModel;
  // Model for historicoVeiculo component.
  late HistoricoVeiculoModel historicoVeiculoModel;
  // Model for cercasVirtuais component.
  late CercasVirtuaisModel cercasVirtuaisModel;
  // Model for histVeiculoJornada component.
  late HistVeiculoJornadaModel histVeiculoJornadaModel;
  // Model for Rotas component.
  late RotasModel rotasModel;
  // Model for pontoInteresse component.
  late PontoInteresseModel pontoInteresseModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    gestaoVeiculosModel = createModel(context, () => GestaoVeiculosModel());
    gestaoVeiculosMapsModel =
        createModel(context, () => GestaoVeiculosMapsModel());
    historicoVeiculoModel = createModel(context, () => HistoricoVeiculoModel());
    cercasVirtuaisModel = createModel(context, () => CercasVirtuaisModel());
    histVeiculoJornadaModel =
        createModel(context, () => HistVeiculoJornadaModel());
    rotasModel = createModel(context, () => RotasModel());
    pontoInteresseModel = createModel(context, () => PontoInteresseModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    gestaoVeiculosModel.dispose();
    gestaoVeiculosMapsModel.dispose();
    historicoVeiculoModel.dispose();
    cercasVirtuaisModel.dispose();
    histVeiculoJornadaModel.dispose();
    rotasModel.dispose();
    pontoInteresseModel.dispose();
  }
}
