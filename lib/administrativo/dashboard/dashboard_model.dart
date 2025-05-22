import '/components/header_widget.dart';
import '/dashboard/dashoard/dashoard_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dashboard_widget.dart' show DashboardWidget;
import 'package:flutter/material.dart';

class DashboardModel extends FlutterFlowModel<DashboardWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for header component.
  late HeaderModel headerModel;
  // Model for dashoard component.
  late DashoardModel dashoardModel;

  @override
  void initState(BuildContext context) {
    headerModel = createModel(context, () => HeaderModel());
    dashoardModel = createModel(context, () => DashoardModel());
  }

  @override
  void dispose() {
    headerModel.dispose();
    dashoardModel.dispose();
  }
}
