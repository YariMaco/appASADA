import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'editar_lectura_widget.dart' show EditarLecturaWidget;
import 'package:flutter/material.dart';

class EditarLecturaModel extends FlutterFlowModel<EditarLecturaWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtLecturaAnterior widget.
  FocusNode? txtLecturaAnteriorFocusNode;
  TextEditingController? txtLecturaAnteriorTextController;
  String? Function(BuildContext, String?)?
      txtLecturaAnteriorTextControllerValidator;
  // State field(s) for txtLecturaActual widget.
  FocusNode? txtLecturaActualFocusNode;
  TextEditingController? txtLecturaActualTextController;
  String? Function(BuildContext, String?)?
      txtLecturaActualTextControllerValidator;
  String? _txtLecturaActualTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Se requiere este campo';
    }

    return null;
  }

  // State field(s) for txtConsumo widget.
  FocusNode? txtConsumoFocusNode;
  TextEditingController? txtConsumoTextController;
  String? Function(BuildContext, String?)? txtConsumoTextControllerValidator;
  String? _txtConsumoTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for txtComentario widget.
  FocusNode? txtComentarioFocusNode;
  TextEditingController? txtComentarioTextController;
  String? Function(BuildContext, String?)? txtComentarioTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    txtLecturaActualTextControllerValidator =
        _txtLecturaActualTextControllerValidator;
    txtConsumoTextControllerValidator = _txtConsumoTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtLecturaAnteriorFocusNode?.dispose();
    txtLecturaAnteriorTextController?.dispose();

    txtLecturaActualFocusNode?.dispose();
    txtLecturaActualTextController?.dispose();

    txtConsumoFocusNode?.dispose();
    txtConsumoTextController?.dispose();

    txtComentarioFocusNode?.dispose();
    txtComentarioTextController?.dispose();
  }
}
