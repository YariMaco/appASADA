import '/backend/backend.dart';
import '/componentes/app_bar/app_bar_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'lista_medidores_model.dart';
export 'lista_medidores_model.dart';

class ListaMedidoresWidget extends StatefulWidget {
  const ListaMedidoresWidget({super.key});

  @override
  State<ListaMedidoresWidget> createState() => _ListaMedidoresWidgetState();
}

class _ListaMedidoresWidgetState extends State<ListaMedidoresWidget> {
  late ListaMedidoresModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListaMedidoresModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).alternate,
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Stack(
              alignment: AlignmentDirectional(0.0, 0.0),
              children: [
                wrapWithModel(
                  model: _model.appBarModel,
                  updateCallback: () => safeSetState(() {}),
                  child: AppBarWidget(),
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 15.0),
                  child: Text(
                    'Lista de Medidores',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito',
                          fontSize: 22.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(30.0, 75.0, 30.0, 0.0),
                  child: Text(
                    'Usa la barra buscadora para encontrar un medidor de forma más eficiente',
                    textAlign: TextAlign.justify,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Nunito',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 18.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ),
              ],
            ),
            StreamBuilder<List<MedidoresRecord>>(
              stream: queryMedidoresRecord(
                queryBuilder: (medidoresRecord) => medidoresRecord.where(
                  'estado',
                  isEqualTo: true,
                ),
              ),
              builder: (context, snapshot) {
                // Customize what your widget looks like when it's loading.
                if (!snapshot.hasData) {
                  return Center(
                    child: SizedBox(
                      width: 50.0,
                      height: 50.0,
                      child: CircularProgressIndicator(
                        valueColor: AlwaysStoppedAnimation<Color>(
                          FlutterFlowTheme.of(context).primary,
                        ),
                      ),
                    ),
                  );
                }
                List<MedidoresRecord> listViewMedidoresRecordList =
                    snapshot.data!;

                return ListView.builder(
                  padding: EdgeInsets.zero,
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  itemCount: listViewMedidoresRecordList.length,
                  itemBuilder: (context, listViewIndex) {
                    final listViewMedidoresRecord =
                        listViewMedidoresRecordList[listViewIndex];
                    return Padding(
                      padding: EdgeInsets.all(6.0),
                      child: Container(
                        width: 100.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color:
                              FlutterFlowTheme.of(context).secondaryBackground,
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4.0,
                              color: Color(0x33000000),
                              offset: Offset(
                                0.0,
                                2.0,
                              ),
                            )
                          ],
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                        child: StreamBuilder<AbonadosRecord>(
                          stream: AbonadosRecord.getDocument(
                              listViewMedidoresRecord.abonado!),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: SizedBox(
                                  width: 50.0,
                                  height: 50.0,
                                  child: CircularProgressIndicator(
                                    valueColor: AlwaysStoppedAnimation<Color>(
                                      FlutterFlowTheme.of(context).primary,
                                    ),
                                  ),
                                ),
                              );
                            }

                            final rowAbonadosRecord = snapshot.data!;

                            return Row(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      12.0, 0.0, 12.0, 0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        rowAbonadosRecord.nombreCompleto,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Text(
                                        listViewMedidoresRecord.direccion,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Nunito',
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      Align(
                                        alignment:
                                            AlignmentDirectional(-1.0, 0.0),
                                        child: RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: 'N.MEdidor: ',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          letterSpacing: 0.0,
                                                        ),
                                              ),
                                              TextSpan(
                                                text: listViewMedidoresRecord
                                                    .codigoAsignado,
                                                style: TextStyle(),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Nunito',
                                                  color: Color(0xFF45403C),
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 10.0, 0.0),
                                  child: StreamBuilder<List<LecturasRecord>>(
                                    stream: queryLecturasRecord(
                                      queryBuilder: (lecturasRecord) =>
                                          lecturasRecord
                                              .where(
                                                'fechaLectura',
                                                isGreaterThanOrEqualTo:
                                                    functions.primeraFecha(),
                                              )
                                              .where(
                                                'fechaLectura',
                                                isLessThanOrEqualTo:
                                                    functions.ultimafecha(),
                                              )
                                              .where(
                                                'medidor',
                                                isEqualTo:
                                                    listViewMedidoresRecord
                                                        .reference,
                                              ),
                                      singleRecord: true,
                                    ),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50.0,
                                            height: 50.0,
                                            child: CircularProgressIndicator(
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                FlutterFlowTheme.of(context)
                                                    .primary,
                                              ),
                                            ),
                                          ),
                                        );
                                      }
                                      List<LecturasRecord>
                                          rowLecturasRecordList =
                                          snapshot.data!;
                                      final rowLecturasRecord =
                                          rowLecturasRecordList.isNotEmpty
                                              ? rowLecturasRecordList.first
                                              : null;

                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 5.0, 0.0, 0.0),
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                await Future.wait([
                                                  Future(() async {
                                                    _model.leida = await actions
                                                        .lecturaMensual(
                                                      listViewMedidoresRecord
                                                          .reference,
                                                    );
                                                  }),
                                                  Future(() async {
                                                    _model.lecturaAnterior =
                                                        await actions
                                                            .obtenerLecturaAnterior(
                                                      listViewMedidoresRecord
                                                          .reference,
                                                    );
                                                  }),
                                                ]);
                                                if (_model.leida!) {
                                                  _model.lecturaRealizada =
                                                      await actions
                                                          .obtenerLeida(
                                                    listViewMedidoresRecord
                                                        .reference,
                                                  );

                                                  context.pushNamed(
                                                    'EditarLectura',
                                                    queryParameters: {
                                                      'paramLecturaRef':
                                                          serializeParam(
                                                        _model.lecturaRealizada,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                } else {
                                                  context.pushNamed(
                                                    'LecturaNueva',
                                                    queryParameters: {
                                                      'paramMedidor':
                                                          serializeParam(
                                                        listViewMedidoresRecord
                                                            .reference,
                                                        ParamType
                                                            .DocumentReference,
                                                      ),
                                                      'lecturaAnterior':
                                                          serializeParam(
                                                        _model.lecturaAnterior,
                                                        ParamType.int,
                                                      ),
                                                    }.withoutNulls,
                                                  );
                                                }

                                                safeSetState(() {});
                                              },
                                              text: valueOrDefault<String>(
                                                rowLecturasRecord != null
                                                    ? 'Editar'
                                                    : 'Registrar',
                                                'Registrar',
                                              ),
                                              icon: Icon(
                                                Icons.arrow_forward_ios,
                                                size: 12.0,
                                              ),
                                              options: FFButtonOptions(
                                                height: 30.0,
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 0.0, 10.0, 0.0),
                                                iconAlignment:
                                                    IconAlignment.end,
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily: 'Nunito',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryBackground,
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.2,
                                                        ),
                                                elevation: 0.0,
                                                borderSide: BorderSide(
                                                  width: 2.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                              ),
                                            ),
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
