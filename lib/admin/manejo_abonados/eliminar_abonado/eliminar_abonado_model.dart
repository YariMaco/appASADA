import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_abonado_widget.dart' show EliminarAbonadoWidget;
import 'package:flutter/material.dart';

class EliminarAbonadoModel extends FlutterFlowModel<EliminarAbonadoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarTextController;
  String? Function(BuildContext, String?)? txtBuscarTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtBuscarFocusNode?.dispose();
    txtBuscarTextController?.dispose();
  }
}
