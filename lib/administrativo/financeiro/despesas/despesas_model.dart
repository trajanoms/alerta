import '/components/header_widget.dart';
import '/financeiro/financeiro_despesas/financeiro_despesas_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'despesas_widget.dart' show DespesasWidget;
import 'package:flutter/material.dart';

class DespesasModel extends FlutterFlowModel<DespesasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for financeiroDespesas component.
  late FinanceiroDespesasModel financeiroDespesasModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    financeiroDespesasModel =
        createModel(context, () => FinanceiroDespesasModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    financeiroDespesasModel.dispose();
  }
}
