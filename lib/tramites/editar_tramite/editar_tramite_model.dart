import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_tramite_widget.dart' show EditarTramiteWidget;
import 'package:flutter/material.dart';

class EditarTramiteModel extends FlutterFlowModel<EditarTramiteWidget> {
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
      return 'Field is required';
    }

    if (val.length < 20) {
      return 'El nombre debe ser corto';
    }

    return null;
  }

  // State field(s) for TextFieldRequisito widget.
  FocusNode? textFieldRequisitoFocusNode;
  TextEditingController? textFieldRequisitoTextController;
  String? Function(BuildContext, String?)?
      textFieldRequisitoTextControllerValidator;
  String? _textFieldRequisitoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    txtNombreTextControllerValidator = _txtNombreTextControllerValidator;
    textFieldRequisitoTextControllerValidator =
        _textFieldRequisitoTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtNombreFocusNode?.dispose();
    txtNombreTextController?.dispose();

    textFieldRequisitoFocusNode?.dispose();
    textFieldRequisitoTextController?.dispose();
  }
}
