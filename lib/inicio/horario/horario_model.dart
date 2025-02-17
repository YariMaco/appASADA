import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'horario_widget.dart' show HorarioWidget;
import 'package:flutter/material.dart';

class HorarioModel extends FlutterFlowModel<HorarioWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for CheckboxL widget.
  bool? checkboxLValue;
  // State field(s) for txtInicioL widget.
  FocusNode? txtInicioLFocusNode;
  TextEditingController? txtInicioLTextController;
  String? Function(BuildContext, String?)? txtInicioLTextControllerValidator;
  DateTime? datePicked1;
  // State field(s) for txtFinL widget.
  FocusNode? txtFinLFocusNode;
  TextEditingController? txtFinLTextController;
  String? Function(BuildContext, String?)? txtFinLTextControllerValidator;
  DateTime? datePicked2;
  // State field(s) for CheckboxK widget.
  bool? checkboxKValue;
  // State field(s) for txtInicioK widget.
  FocusNode? txtInicioKFocusNode;
  TextEditingController? txtInicioKTextController;
  String? Function(BuildContext, String?)? txtInicioKTextControllerValidator;
  DateTime? datePicked3;
  // State field(s) for txtFinK widget.
  FocusNode? txtFinKFocusNode;
  TextEditingController? txtFinKTextController;
  String? Function(BuildContext, String?)? txtFinKTextControllerValidator;
  DateTime? datePicked4;
  // State field(s) for CheckboxM widget.
  bool? checkboxMValue;
  // State field(s) for txtInicioM widget.
  FocusNode? txtInicioMFocusNode;
  TextEditingController? txtInicioMTextController;
  String? Function(BuildContext, String?)? txtInicioMTextControllerValidator;
  DateTime? datePicked5;
  // State field(s) for txtFinM widget.
  FocusNode? txtFinMFocusNode;
  TextEditingController? txtFinMTextController;
  String? Function(BuildContext, String?)? txtFinMTextControllerValidator;
  DateTime? datePicked6;
  // State field(s) for CheckboxJ widget.
  bool? checkboxJValue;
  // State field(s) for txtInicioJ widget.
  FocusNode? txtInicioJFocusNode;
  TextEditingController? txtInicioJTextController;
  String? Function(BuildContext, String?)? txtInicioJTextControllerValidator;
  DateTime? datePicked7;
  // State field(s) for txtFinJ widget.
  FocusNode? txtFinJFocusNode;
  TextEditingController? txtFinJTextController;
  String? Function(BuildContext, String?)? txtFinJTextControllerValidator;
  DateTime? datePicked8;
  // State field(s) for CheckboxV widget.
  bool? checkboxVValue;
  // State field(s) for txtInicioV widget.
  FocusNode? txtInicioVFocusNode;
  TextEditingController? txtInicioVTextController;
  String? Function(BuildContext, String?)? txtInicioVTextControllerValidator;
  DateTime? datePicked9;
  // State field(s) for txtFinV widget.
  FocusNode? txtFinVFocusNode;
  TextEditingController? txtFinVTextController;
  String? Function(BuildContext, String?)? txtFinVTextControllerValidator;
  DateTime? datePicked10;
  // State field(s) for CheckboxS widget.
  bool? checkboxSValue;
  // State field(s) for txtInicioS widget.
  FocusNode? txtInicioSFocusNode;
  TextEditingController? txtInicioSTextController;
  String? Function(BuildContext, String?)? txtInicioSTextControllerValidator;
  DateTime? datePicked11;
  // State field(s) for txtFinS widget.
  FocusNode? txtFinSFocusNode;
  TextEditingController? txtFinSTextController;
  String? Function(BuildContext, String?)? txtFinSTextControllerValidator;
  DateTime? datePicked12;
  // State field(s) for CheckboxD widget.
  bool? checkboxDValue;
  // State field(s) for txtInicioD widget.
  FocusNode? txtInicioDFocusNode;
  TextEditingController? txtInicioDTextController;
  String? Function(BuildContext, String?)? txtInicioDTextControllerValidator;
  DateTime? datePicked13;
  // State field(s) for txtFinD widget.
  FocusNode? txtFinDFocusNode;
  TextEditingController? txtFinDTextController;
  String? Function(BuildContext, String?)? txtFinDTextControllerValidator;
  DateTime? datePicked14;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtInicioLFocusNode?.dispose();
    txtInicioLTextController?.dispose();

    txtFinLFocusNode?.dispose();
    txtFinLTextController?.dispose();

    txtInicioKFocusNode?.dispose();
    txtInicioKTextController?.dispose();

    txtFinKFocusNode?.dispose();
    txtFinKTextController?.dispose();

    txtInicioMFocusNode?.dispose();
    txtInicioMTextController?.dispose();

    txtFinMFocusNode?.dispose();
    txtFinMTextController?.dispose();

    txtInicioJFocusNode?.dispose();
    txtInicioJTextController?.dispose();

    txtFinJFocusNode?.dispose();
    txtFinJTextController?.dispose();

    txtInicioVFocusNode?.dispose();
    txtInicioVTextController?.dispose();

    txtFinVFocusNode?.dispose();
    txtFinVTextController?.dispose();

    txtInicioSFocusNode?.dispose();
    txtInicioSTextController?.dispose();

    txtFinSFocusNode?.dispose();
    txtFinSTextController?.dispose();

    txtInicioDFocusNode?.dispose();
    txtInicioDTextController?.dispose();

    txtFinDFocusNode?.dispose();
    txtFinDTextController?.dispose();
  }
}
