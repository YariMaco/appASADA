import '/flutter_flow/flutter_flow_util.dart';
import 'eliminar_cuenta_widget.dart' show EliminarCuentaWidget;
import 'package:flutter/material.dart';

class EliminarCuentaModel extends FlutterFlowModel<EliminarCuentaWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textFieldTextController;
  String? Function(BuildContext, String?)? textFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textFieldTextController?.dispose();
  }
}
