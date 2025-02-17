import '/flutter_flow/flutter_flow_util.dart';
import 'card_editar_correo_widget.dart' show CardEditarCorreoWidget;
import 'package:flutter/material.dart';

class CardEditarCorreoModel extends FlutterFlowModel<CardEditarCorreoWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCorreoActual widget.
  FocusNode? txtCorreoActualFocusNode;
  TextEditingController? txtCorreoActualTextController;
  String? Function(BuildContext, String?)?
      txtCorreoActualTextControllerValidator;
  // State field(s) for txtNuevoCorreo widget.
  FocusNode? txtNuevoCorreoFocusNode;
  TextEditingController? txtNuevoCorreoTextController;
  String? Function(BuildContext, String?)?
      txtNuevoCorreoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCorreoActualFocusNode?.dispose();
    txtCorreoActualTextController?.dispose();

    txtNuevoCorreoFocusNode?.dispose();
    txtNuevoCorreoTextController?.dispose();
  }
}
