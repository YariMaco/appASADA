import '/flutter_flow/flutter_flow_util.dart';
import 'subir_imagen_widget.dart' show SubirImagenWidget;
import 'package:flutter/material.dart';

class SubirImagenModel extends FlutterFlowModel<SubirImagenWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for imagenSubidaURL widget.
  FocusNode? imagenSubidaURLFocusNode;
  TextEditingController? imagenSubidaURLTextController;
  String? Function(BuildContext, String?)?
      imagenSubidaURLTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    imagenSubidaURLFocusNode?.dispose();
    imagenSubidaURLTextController?.dispose();
  }
}
