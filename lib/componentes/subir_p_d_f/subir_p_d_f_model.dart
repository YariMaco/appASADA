import '/flutter_flow/flutter_flow_util.dart';
import 'subir_p_d_f_widget.dart' show SubirPDFWidget;
import 'package:flutter/material.dart';

class SubirPDFModel extends FlutterFlowModel<SubirPDFWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
