import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'informacion_general_widget.dart' show InformacionGeneralWidget;
import 'package:flutter/material.dart';

class InformacionGeneralModel
    extends FlutterFlowModel<InformacionGeneralWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtHorarioLV widget.
  FocusNode? txtHorarioLVFocusNode;
  TextEditingController? txtHorarioLVTextController;
  String? Function(BuildContext, String?)? txtHorarioLVTextControllerValidator;
  String? _txtHorarioLVTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for txtHorarioSabado widget.
  FocusNode? txtHorarioSabadoFocusNode;
  TextEditingController? txtHorarioSabadoTextController;
  String? Function(BuildContext, String?)?
      txtHorarioSabadoTextControllerValidator;
  String? _txtHorarioSabadoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for txtHorarioDomingo widget.
  FocusNode? txtHorarioDomingoFocusNode;
  TextEditingController? txtHorarioDomingoTextController;
  String? Function(BuildContext, String?)?
      txtHorarioDomingoTextControllerValidator;
  String? _txtHorarioDomingoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for txtNombre widget.
  FocusNode? txtNombreFocusNode;
  TextEditingController? txtNombreTextController;
  String? Function(BuildContext, String?)? txtNombreTextControllerValidator;
  String? _txtNombreTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for textFieldDireccion widget.
  FocusNode? textFieldDireccionFocusNode;
  TextEditingController? textFieldDireccionTextController;
  String? Function(BuildContext, String?)?
      textFieldDireccionTextControllerValidator;
  String? _textFieldDireccionTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for textTelefono widget.
  FocusNode? textTelefonoFocusNode;
  TextEditingController? textTelefonoTextController;
  String? Function(BuildContext, String?)? textTelefonoTextControllerValidator;
  String? _textTelefonoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    return null;
  }

  // State field(s) for textCorreo widget.
  FocusNode? textCorreoFocusNode;
  TextEditingController? textCorreoTextController;
  String? Function(BuildContext, String?)? textCorreoTextControllerValidator;
  String? _textCorreoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Este campo es obligatorio';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Has to be a valid email address.';
    }
    return null;
  }

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    txtHorarioLVTextControllerValidator = _txtHorarioLVTextControllerValidator;
    txtHorarioSabadoTextControllerValidator =
        _txtHorarioSabadoTextControllerValidator;
    txtHorarioDomingoTextControllerValidator =
        _txtHorarioDomingoTextControllerValidator;
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    textFieldDireccionTextControllerValidator =
        _textFieldDireccionTextControllerValidator;
    textTelefonoTextControllerValidator = _textTelefonoTextControllerValidator;
    textCorreoTextControllerValidator = _textCorreoTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtHorarioLVFocusNode?.dispose();
    txtHorarioLVTextController?.dispose();

    txtHorarioSabadoFocusNode?.dispose();
    txtHorarioSabadoTextController?.dispose();

    txtHorarioDomingoFocusNode?.dispose();
    txtHorarioDomingoTextController?.dispose();

    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    textFieldDireccionFocusNode?.dispose();
    textFieldDireccionTextController?.dispose();

    textTelefonoFocusNode?.dispose();
    textTelefonoTextController?.dispose();

    textCorreoFocusNode?.dispose();
    textCorreoTextController?.dispose();
  }
}
