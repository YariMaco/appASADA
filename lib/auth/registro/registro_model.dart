import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'registro_widget.dart' show RegistroWidget;
import 'package:flutter/material.dart';

class RegistroModel extends FlutterFlowModel<RegistroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // State field(s) for rbtnTipoPersona widget.
  FormFieldController<String>? rbtnTipoPersonaValueController;
  // State field(s) for txtNombreLocal widget.
  FocusNode? txtNombreLocalFocusNode;
  TextEditingController? txtNombreLocalTextController;
  String? Function(BuildContext, String?)?
      txtNombreLocalTextControllerValidator;
  // State field(s) for txtNombreLegal widget.
  FocusNode? txtNombreLegalFocusNode;
  TextEditingController? txtNombreLegalTextController;
  String? Function(BuildContext, String?)?
      txtNombreLegalTextControllerValidator;
  // State field(s) for txtCedulaJuridica widget.
  FocusNode? txtCedulaJuridicaFocusNode;
  TextEditingController? txtCedulaJuridicaTextController;
  String? Function(BuildContext, String?)?
      txtCedulaJuridicaTextControllerValidator;
  // State field(s) for txtNombrCompleto widget.
  FocusNode? txtNombrCompletoFocusNode;
  TextEditingController? txtNombrCompletoTextController;
  String? Function(BuildContext, String?)?
      txtNombrCompletoTextControllerValidator;
  // State field(s) for ddNacionalidad widget.
  String? ddNacionalidadValue;
  FormFieldController<String>? ddNacionalidadValueController;
  // State field(s) for txtCedula widget.
  FocusNode? txtCedulaFocusNode;
  TextEditingController? txtCedulaTextController;
  String? Function(BuildContext, String?)? txtCedulaTextControllerValidator;
  // State field(s) for txtDimex widget.
  FocusNode? txtDimexFocusNode;
  TextEditingController? txtDimexTextController;
  String? Function(BuildContext, String?)? txtDimexTextControllerValidator;
  // State field(s) for txtPasaporte widget.
  FocusNode? txtPasaporteFocusNode;
  TextEditingController? txtPasaporteTextController;
  String? Function(BuildContext, String?)? txtPasaporteTextControllerValidator;
  // Stores action output result for [Validate Form] action in btnContinuar widget.
  bool? validado1;
  // State field(s) for txtTelefono widget.
  FocusNode? txtTelefonoFocusNode;
  TextEditingController? txtTelefonoTextController;
  String? Function(BuildContext, String?)? txtTelefonoTextControllerValidator;
  String? _txtTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligartorio';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }

    return null;
  }

  // State field(s) for txtCorreo widget.
  FocusNode? txtCorreoFocusNode;
  TextEditingController? txtCorreoTextController;
  String? Function(BuildContext, String?)? txtCorreoTextControllerValidator;
  String? _txtCorreoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligartorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Debe corresponde al formato de un correo';
    }
    return null;
  }

  // State field(s) for txtContrasena widget.
  FocusNode? txtContrasenaFocusNode;
  TextEditingController? txtContrasenaTextController;
  late bool txtContrasenaVisibility;
  String? Function(BuildContext, String?)? txtContrasenaTextControllerValidator;
  String? _txtContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo Obligartorio';
    }

    if (!RegExp('').hasMatch(val)) {
      return 'Invalid text';
    }
    return null;
  }

  // State field(s) for txtConfirmarContrasena widget.
  FocusNode? txtConfirmarContrasenaFocusNode;
  TextEditingController? txtConfirmarContrasenaTextController;
  late bool txtConfirmarContrasenaVisibility;
  String? Function(BuildContext, String?)?
      txtConfirmarContrasenaTextControllerValidator;
  String? _txtConfirmarContrasenaTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Validate Form] action in btnCrearCuenta widget.
  bool? validado;
  // Stores action output result for [Custom Action - esDueno] action in btnCrearCuenta widget.
  bool? dueno;

  @override
  void initState(BuildContext context) {
    txtTelefonoTextControllerValidator = _txtTelefonoTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtContrasenaVisibility = false;
    txtContrasenaTextControllerValidator =
        _txtContrasenaTextControllerValidator;
    txtConfirmarContrasenaVisibility = false;
    txtConfirmarContrasenaTextControllerValidator =
        _txtConfirmarContrasenaTextControllerValidator;
  }

  @override
  void dispose() {
    txtNombreLocalFocusNode?.dispose();
    txtNombreLocalTextController?.dispose();

    txtNombreLegalFocusNode?.dispose();
    txtNombreLegalTextController?.dispose();

    txtCedulaJuridicaFocusNode?.dispose();
    txtCedulaJuridicaTextController?.dispose();

    txtNombrCompletoFocusNode?.dispose();
    txtNombrCompletoTextController?.dispose();

    txtCedulaFocusNode?.dispose();
    txtCedulaTextController?.dispose();

    txtDimexFocusNode?.dispose();
    txtDimexTextController?.dispose();

    txtPasaporteFocusNode?.dispose();
    txtPasaporteTextController?.dispose();

    txtTelefonoFocusNode?.dispose();
    txtTelefonoTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtContrasenaFocusNode?.dispose();
    txtContrasenaTextController?.dispose();

    txtConfirmarContrasenaFocusNode?.dispose();
    txtConfirmarContrasenaTextController?.dispose();
  }

  /// Additional helper methods.
  String? get rbtnTipoPersonaValue => rbtnTipoPersonaValueController?.value;
}
