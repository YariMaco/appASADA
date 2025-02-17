import '/flutter_flow/flutter_flow_util.dart';
import 'card_editar_celular_widget.dart' show CardEditarCelularWidget;
import 'package:flutter/material.dart';

class CardEditarCelularModel extends FlutterFlowModel<CardEditarCelularWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for txtCelularActual widget.
  FocusNode? txtCelularActualFocusNode;
  TextEditingController? txtCelularActualTextController;
  String? Function(BuildContext, String?)?
      txtCelularActualTextControllerValidator;
  // State field(s) for txtCelularNuevo widget.
  FocusNode? txtCelularNuevoFocusNode;
  TextEditingController? txtCelularNuevoTextController;
  String? Function(BuildContext, String?)?
      txtCelularNuevoTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    txtCelularActualFocusNode?.dispose();
    txtCelularActualTextController?.dispose();

    txtCelularNuevoFocusNode?.dispose();
    txtCelularNuevoTextController?.dispose();
  }
}
