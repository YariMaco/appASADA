import '/componentes/app_bar/app_bar_widget.dart';
import '/componentes/barra_navegacion_inferior/barra_navegacion_inferior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'cuenta_widget.dart' show CuentaWidget;
import 'package:flutter/material.dart';

class CuentaModel extends FlutterFlowModel<CuentaWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for Switch widget.
  bool? switchValue;
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
