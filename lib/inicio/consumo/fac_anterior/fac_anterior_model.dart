import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'fac_anterior_widget.dart' show FacAnteriorWidget;
import 'package:flutter/material.dart';

class FacAnteriorModel extends FlutterFlowModel<FacAnteriorWidget> {
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
