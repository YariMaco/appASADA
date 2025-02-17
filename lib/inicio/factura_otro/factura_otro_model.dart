import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'factura_otro_widget.dart' show FacturaOtroWidget;
import 'package:flutter/material.dart';

class FacturaOtroModel extends FlutterFlowModel<FacturaOtroWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for txtBuscar widget.
  FocusNode? txtBuscarFocusNode;
  TextEditingController? txtBuscarTextController;
  String? Function(BuildContext, String?)? txtBuscarTextControllerValidator;
  String? _txtBuscarTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'No se puede consultar en blanco';
    }

    if (val.length < 6) {
      return 'No existen identificanciones tan cortas';
    }

    return null;
  }

  // Stores action output result for [Custom Action - obtenerInfoAbonado] action in btnBusacr widget.
  DocumentReference? infoAbonado;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
    txtBuscarTextControllerValidator = _txtBuscarTextControllerValidator;
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtBuscarFocusNode?.dispose();
    txtBuscarTextController?.dispose();
  }
}
