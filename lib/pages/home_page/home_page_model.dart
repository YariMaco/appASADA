import '/componentes/barra_navegacion_inferior/barra_navegacion_inferior_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - obtenerInfoAbonado] action in IconButton widget.
  DocumentReference? infoAbonado;
  // Stores action output result for [Custom Action - obtenerInfoAbonado] action in IconButton widget.
  DocumentReference? abonadoRef;
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
