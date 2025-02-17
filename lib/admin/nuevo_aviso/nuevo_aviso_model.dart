import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'nuevo_aviso_widget.dart' show NuevoAvisoWidget;
import 'package:flutter/material.dart';

class NuevoAvisoModel extends FlutterFlowModel<NuevoAvisoWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
  // State field(s) for txtDestinatario widget.
  FocusNode? txtDestinatarioFocusNode;
  TextEditingController? txtDestinatarioTextController;
  String? Function(BuildContext, String?)?
      txtDestinatarioTextControllerValidator;
  // State field(s) for tipoEvento widget.
  String? tipoEventoValue;
  FormFieldController<String>? tipoEventoValueController;
  // State field(s) for txtOtroTipoAviso widget.
  FocusNode? txtOtroTipoAvisoFocusNode;
  TextEditingController? txtOtroTipoAvisoTextController;
  String? Function(BuildContext, String?)?
      txtOtroTipoAvisoTextControllerValidator;
  // State field(s) for txtTituloAviso widget.
  FocusNode? txtTituloAvisoFocusNode;
  TextEditingController? txtTituloAvisoTextController;
  String? Function(BuildContext, String?)?
      txtTituloAvisoTextControllerValidator;
  // State field(s) for txtCuerpoAviso widget.
  FocusNode? txtCuerpoAvisoFocusNode;
  TextEditingController? txtCuerpoAvisoTextController;
  String? Function(BuildContext, String?)?
      txtCuerpoAvisoTextControllerValidator;

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    txtDestinatarioFocusNode?.dispose();
    txtDestinatarioTextController?.dispose();

    txtOtroTipoAvisoFocusNode?.dispose();
    txtOtroTipoAvisoTextController?.dispose();

    txtTituloAvisoFocusNode?.dispose();
    txtTituloAvisoTextController?.dispose();

    txtCuerpoAvisoFocusNode?.dispose();
    txtCuerpoAvisoTextController?.dispose();
  }

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
