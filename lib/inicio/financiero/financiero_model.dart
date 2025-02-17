import '/backend/backend.dart';
import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_data_table.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'financiero_widget.dart' show FinancieroWidget;
import 'package:flutter/material.dart';

class FinancieroModel extends FlutterFlowModel<FinancieroWidget> {
  ///  Local state fields for this page.

  DocumentReference? selectedRowRef;

  ///  State fields for stateful widgets in this page.

  // Model for AppBar component.
  late AppBarModel appBarModel;
  // State field(s) for PaginatedDataTable widget.
  final paginatedDataTableController =
      FlutterFlowDataTableController<TarifasRecord>();

  @override
  void initState(BuildContext context) {
    appBarModel = createModel(context, () => AppBarModel());
  }

  @override
  void dispose() {
    appBarModel.dispose();
    paginatedDataTableController.dispose();
  }
}
