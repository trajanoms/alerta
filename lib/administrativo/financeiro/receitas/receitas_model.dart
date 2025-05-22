import '/components/header_widget.dart';
import '/financeiro/financeiro_receita/financeiro_receita_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'receitas_widget.dart' show ReceitasWidget;
import 'package:flutter/material.dart';

class ReceitasModel extends FlutterFlowModel<ReceitasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for FinanceiroReceita component.
  late FinanceiroReceitaModel financeiroReceitaModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    financeiroReceitaModel =
        createModel(context, () => FinanceiroReceitaModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    financeiroReceitaModel.dispose();
  }
}
