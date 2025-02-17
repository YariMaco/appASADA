import '/flutter_flow/flutter_flow_util.dart';
import 'inicio_sesion_widget.dart' show InicioSesionWidget;
import 'package:flutter/material.dart';

class InicioSesionModel extends FlutterFlowModel<InicioSesionWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for txtEmail widget.
  FocusNode? txtEmailFocusNode;
  TextEditingController? txtEmailTextController;
  String? Function(BuildContext, String?)? txtEmailTextControllerValidator;
  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaTextController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaTextControllerValidator;

  @override
  void initState(BuildContext context) {
    txtContrasenaVisibility = false;
  }

  @override
  void dispose() {
    txtEmailFocusNode?.dispose();
    txtEmailTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();
  }
}
