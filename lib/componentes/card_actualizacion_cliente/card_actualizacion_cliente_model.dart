import '/flutter_flow/flutter_flow_util.dart';
import 'card_actualizacion_cliente_widget.dart'
    show CardActualizacionClienteWidget;
import 'package:flutter/material.dart';

class CardActualizacionClienteModel
    extends FlutterFlowModel<CardActualizacionClienteWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for textFieldNombre widget.
  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreTextControllerValidator;
  String? _textFieldNombreTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo nombre requerido';
    }

    return null;
  }

  // State field(s) for textFieldTelefono widget.
  FocusNode? textFieldTelefonoFocusNode;
  TextEditingController? textFieldTelefonoTextController;
  String? Function(BuildContext, String?)?
      textFieldTelefonoTextControllerValidator;
  String? _textFieldTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo telefono requerido';
    }

    return null;
  }

  // State field(s) for textFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo email requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for textFieldNacionalidad widget.
  FocusNode? textFieldNacionalidadFocusNode;
  TextEditingController? textFieldNacionalidadTextController;
  String? Function(BuildContext, String?)?
      textFieldNacionalidadTextControllerValidator;
  String? _textFieldNacionalidadTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo nacionalidad requerido';
    }

    return null;
  }

  // State field(s) for textIdentificacion widget.
  FocusNode? textIdentificacionFocusNode;
  TextEditingController? textIdentificacionTextController;
  String? Function(BuildContext, String?)?
      textIdentificacionTextControllerValidator;
  String? _textIdentificacionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo identificacion requerido';
    }

    return null;
  }

  // State field(s) for Switch widget.
  bool? switchValue;

  @override
  void initState(BuildContext context) {
    textFieldNombreTextControllerValidator =
        _textFieldNombreTextControllerValidator;
    textFieldTelefonoTextControllerValidator =
        _textFieldTelefonoTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldNacionalidadTextControllerValidator =
        _textFieldNacionalidadTextControllerValidator;
    textIdentificacionTextControllerValidator =
        _textIdentificacionTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textFieldTelefonoFocusNode?.dispose();
    textFieldTelefonoTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldNacionalidadFocusNode?.dispose();
    textFieldNacionalidadTextController?.dispose();

    textIdentificacionFocusNode?.dispose();
    textIdentificacionTextController?.dispose();
  }
}
