import '/flutter_flow/flutter_flow_util.dart';
import 'card_registro_tarifa_widget.dart' show CardRegistroTarifaWidget;
import 'package:flutter/material.dart';

class CardRegistroTarifaModel
    extends FlutterFlowModel<CardRegistroTarifaWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for textFieldNombre widget.
  FocusNode? textFieldNombreFocusNode;
  TextEditingController? textFieldNombreTextController;
  String? Function(BuildContext, String?)?
      textFieldNombreTextControllerValidator;
  // State field(s) for textFieldDescripcion widget.
  FocusNode? textFieldDescripcionFocusNode;
  TextEditingController? textFieldDescripcionTextController;
  String? Function(BuildContext, String?)?
      textFieldDescripcionTextControllerValidator;
  // State field(s) for textFieldMoneda widget.
  FocusNode? textFieldMonedaFocusNode;
  TextEditingController? textFieldMonedaTextController;
  String? Function(BuildContext, String?)?
      textFieldMonedaTextControllerValidator;
  // State field(s) for textFieldCosto widget.
  FocusNode? textFieldCostoFocusNode;
  TextEditingController? textFieldCostoTextController;
  String? Function(BuildContext, String?)?
      textFieldCostoTextControllerValidator;
  // State field(s) for textUnidad widget.
  FocusNode? textUnidadFocusNode;
  TextEditingController? textUnidadTextController;
  String? Function(BuildContext, String?)? textUnidadTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldNombreFocusNode?.dispose();
    textFieldNombreTextController?.dispose();

    textFieldDescripcionFocusNode?.dispose();
    textFieldDescripcionTextController?.dispose();

    textFieldMonedaFocusNode?.dispose();
    textFieldMonedaTextController?.dispose();

    textFieldCostoFocusNode?.dispose();
    textFieldCostoTextController?.dispose();

    textUnidadFocusNode?.dispose();
    textUnidadTextController?.dispose();
  }
}
