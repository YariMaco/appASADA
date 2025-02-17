import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'generar_carta_widget.dart' show GenerarCartaWidget;
import 'package:flutter/material.dart';

class GenerarCartaModel extends FlutterFlowModel<GenerarCartaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 2) {
      return 'El nombre no puede ser tan corto';
    }

    return null;
  }

  // State field(s) for txtID widget.
  FocusNode? txtIDFocusNode;
  TextEditingController? txtIDTextController;
  String? Function(BuildContext, String?)? txtIDTextControllerValidator;
  String? _txtIDTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length > 15) {
      return 'Identificaiones muy largas no se procesan';
    }

    return null;
  }

  // State field(s) for txtTelfono widget.
  FocusNode? txtTelfonoFocusNode;
  TextEditingController? txtTelfonoTextController;
  String? Function(BuildContext, String?)? txtTelfonoTextControllerValidator;
  String? _txtTelfonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
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
      return 'Campo obligatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  // State field(s) for txtBarrio widget.
  FocusNode? txtBarrioFocusNode;
  TextEditingController? txtBarrioTextController;
  String? Function(BuildContext, String?)? txtBarrioTextControllerValidator;
  String? _txtBarrioTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 2) {
      return 'Escriba el barrio donde vive';
    }

    return null;
  }

  // State field(s) for TextMotivo widget.
  FocusNode? textMotivoFocusNode;
  TextEditingController? textMotivoTextController;
  String? Function(BuildContext, String?)? textMotivoTextControllerValidator;
  String? _textMotivoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Campo obligatorio';
    }

    if (val.length < 10) {
      return 'No puede ser una explicación corta';
    }

    return null;
  }

  // Stores action output result for [Custom Action - createCarta] action in Button widget.
  FFUploadedFile? cartaLista;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    txtIDTextControllerValidator = _txtIDTextControllerValidator;
    txtTelfonoTextControllerValidator = _txtTelfonoTextControllerValidator;
    txtCorreoTextControllerValidator = _txtCorreoTextControllerValidator;
    txtBarrioTextControllerValidator = _txtBarrioTextControllerValidator;
    textMotivoTextControllerValidator = _textMotivoTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    txtIDFocusNode?.dispose();
    txtIDTextController?.dispose();

    txtTelfonoFocusNode?.dispose();
    txtTelfonoTextController?.dispose();

    txtCorreoFocusNode?.dispose();
    txtCorreoTextController?.dispose();

    txtBarrioFocusNode?.dispose();
    txtBarrioTextController?.dispose();

    textMotivoFocusNode?.dispose();
    textMotivoTextController?.dispose();
  }
}
