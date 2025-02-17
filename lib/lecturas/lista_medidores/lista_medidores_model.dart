import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lista_medidores_widget.dart' show ListaMedidoresWidget;
import 'package:flutter/material.dart';

class ListaMedidoresModel extends FlutterFlowModel<ListaMedidoresWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // Stores action output result for [Custom Action - lecturaMensual] action in Button widget.
  bool? leida;
  // Stores action output result for [Custom Action - obtenerLecturaAnterior] action in Button widget.
  int? lecturaAnterior;
  // Stores action output result for [Custom Action - obtenerLeida] action in Button widget.
  DocumentReference? lecturaRealizada;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
  }
}
