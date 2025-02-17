import '/componentes/barra_navegacion_inferior/barra_navegacion_inferior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_admin_widget.dart' show HomePageAdminWidget;
import 'package:flutter/material.dart';

class HomePageAdminModel extends FlutterFlowModel<HomePageAdminWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for BarraNavegacionInferior component.
  late BarraNavegacionInferiorModel barraNavegacionInferiorModel;

  @override
  void initState(BuildContext context) {
    barraNavegacionInferiorModel =
        createModel(context, () => BarraNavegacionInferiorModel());
  }

  @override
  void dispose() {
    barraNavegacionInferiorModel.dispose();
  }
}
