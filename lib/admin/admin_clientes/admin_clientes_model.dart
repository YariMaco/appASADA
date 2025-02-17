import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_clientes_widget.dart' show AdminClientesWidget;
import 'package:flutter/material.dart';

class AdminClientesModel extends FlutterFlowModel<AdminClientesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
