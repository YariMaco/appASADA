import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'card_crear_abonado_widget.dart' show CardCrearAbonadoWidget;
import 'package:flutter/material.dart';

class CardCrearAbonadoModel extends FlutterFlowModel<CardCrearAbonadoWidget> {
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

  // State field(s) for textIdentificacion widget.
  FocusNode? textIdentificacionFocusNode;
  TextEditingController? textIdentificacionTextController;
  String? Function(BuildContext, String?)?
      textIdentificacionTextControllerValidator;
  String? _textIdentificacionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo identificación requerido';
    }

    return null;
  }

  // State field(s) for rbtnTipoPersona widget.
  FormFieldController<String>? rbtnTipoPersonaValueController;
  // State field(s) for textFieldEmail widget.
  FocusNode? textFieldEmailFocusNode;
  TextEditingController? textFieldEmailTextController;
  String? Function(BuildContext, String?)?
      textFieldEmailTextControllerValidator;
  String? _textFieldEmailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo correo requerido';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
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

    if (val.length < 8) {
      return 'El minimo de digitos para un telefono es 8';
    }

    return null;
  }

  // State field(s) for textDireccion widget.
  FocusNode? textDireccionFocusNode;
  TextEditingController? textDireccionTextController;
  String? Function(BuildContext, String?)? textDireccionTextControllerValidator;
  String? _textDireccionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo nombre requerido';
    }

    if (val.length > 50) {
      return 'El maximo son 50 caracteres';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    textFieldNombreTextControllerValidator =
        _textFieldNombreTextControllerValidator;
    textIdentificacionTextControllerValidator =
        _textIdentificacionTextControllerValidator;
    textFieldEmailTextControllerValidator =
        _textFieldEmailTextControllerValidator;
    textFieldTelefonoTextControllerValidator =
        _textFieldTelefonoTextControllerValidator;
    textDireccionTextControllerValidator =
        _textDireccionTextControllerValidator;
  }

  @override
  void dispose() {
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textIdentificacionFocusNode?.dispose();
    textIdentificacionTextController?.dispose();

    textFieldEmailFocusNode?.dispose();
    textFieldEmailTextController?.dispose();

    textFieldTelefonoFocusNode?.dispose();
    textFieldTelefonoTextController?.dispose();

    textDireccionFocusNode?.dispose();
    textDireccionTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rbtnTipoPersonaValue => rbtnTipoPersonaValueController?.value;
}
