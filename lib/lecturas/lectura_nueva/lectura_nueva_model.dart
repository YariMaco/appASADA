import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'lectura_nueva_widget.dart' show LecturaNuevaWidget;
import 'package:flutter/material.dart';

class LecturaNuevaModel extends FlutterFlowModel<LecturaNuevaWidget> {
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
  // State field(s) for txtConsumo widget.
  FocusNode? txtConsumoFocusNode;
  TextEditingController? txtConsumoTextController;
  String? Function(BuildContext, String?)? txtConsumoTextControllerValidator;
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
