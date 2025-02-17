import '/componentes/app_bar/app_bar_widget.dart';
import '/componentes/barra_navegacion_inferior/barra_navegacion_inferior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'admin_avisos_widget.dart' show AdminAvisosWidget;
import 'package:flutter/material.dart';

class AdminAvisosModel extends FlutterFlowModel<AdminAvisosWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Model for BarraNavegacionInferior component.
  late BarraNavegacionInferiorModel barraNavegacionInferiorModel;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    barraNavegacionInferiorModel =
        createModel(context, () => BarraNavegacionInferiorModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    barraNavegacionInferiorModel.dispose();
  }
}
