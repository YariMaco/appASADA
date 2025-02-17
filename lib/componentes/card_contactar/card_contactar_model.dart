import '/flutter_flow/flutter_flow_util.dart';
import 'card_contactar_widget.dart' show CardContactarWidget;
import 'package:flutter/material.dart';

class CardContactarModel extends FlutterFlowModel<CardContactarWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo identificacion requerido';
    }

    return null;
  }

  // State field(s) for txtAsunto widget.
  FocusNode? txtAsuntoFocusNode;
  TextEditingController? txtAsuntoTextController;
  String? Function(BuildContext, String?)? txtAsuntoTextControllerValidator;
  // State field(s) for txtDescripcion widget.
  FocusNode? txtDescripcionFocusNode;
  TextEditingController? txtDescripcionTextController;
  String? Function(BuildContext, String?)?
      txtDescripcionTextControllerValidator;
  String? _txtDescripcionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo direccion requerido';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtDescripcionTextControllerValidator =
        _txtDescripcionTextControllerValidator;
  }

  @override
  void dispose() {
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtAsuntoFocusNode?.dispose();
    txtAsuntoTextController?.dispose();

    txtDescripcionFocusNode?.dispose();
    txtDescripcionTextController?.dispose();
  }
}
