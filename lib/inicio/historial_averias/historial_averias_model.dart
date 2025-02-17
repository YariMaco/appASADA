import '/backend/backend.dart';
import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'historial_averias_widget.dart' show HistorialAveriasWidget;
import 'package:flutter/material.dart';

class HistorialAveriasModel extends FlutterFlowModel<HistorialAveriasWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtBuscar widget.
  final txtBuscarKey = GlobalKey();
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarTextController;
  String? txtBuscarSelectedOption;
  String? Function(BuildContext, String?)? txtBuscarTextControllerValidator;
  List<AveriasRecord> simpleSearchResults = [];

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtBuscarFocusNode?.dispose();
  }
}
