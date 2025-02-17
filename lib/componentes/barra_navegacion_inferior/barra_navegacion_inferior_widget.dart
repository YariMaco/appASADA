import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'barra_navegacion_inferior_model.dart';
export 'barra_navegacion_inferior_model.dart';

class BarraNavegacionInferiorWidget extends StatefulWidget {
  const BarraNavegacionInferiorWidget({
    super.key,
    int? paginaSelecionada,
  }) : this.paginaSelecionada = paginaSelecionada ?? 1;

  final int paginaSelecionada;

  @override
  State<BarraNavegacionInferiorWidget> createState() =>
      _BarraNavegacionInferiorWidgetState();
}

class _BarraNavegacionInferiorWidgetState
    extends State<BarraNavegacionInferiorWidget> {
  late BarraNavegacionInferiorModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => BarraNavegacionInferiorModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 390.0,
      height: 70.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        boxShadow: [
          BoxShadow(
            blurRadius: 4.0,
            color: Color(0x0D000000),
            offset: Offset(
              0.0,
              2.0,
            ),
          )
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kfiRrHome,
                  color: valueOrDefault<Color>(
                    widget.paginaSelecionada == 1
                        ? Color(0xFF407BFF)
                        : Color(0xFF606A85),
                    Color(0xFF606A85),
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.goNamed(
                    'HomePage',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              Text(
                'Inicio',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito',
                      color: valueOrDefault<Color>(
                        widget.paginaSelecionada == 1
                            ? Color(0xFF407BFF)
                            : Color(0xFF606A85),
                        Color(0xFF606A85),
                      ),
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kfiRrDocument,
                  color: valueOrDefault<Color>(
                    widget.paginaSelecionada == 2
                        ? Color(0xFF407BFF)
                        : Color(0xFF606A85),
                    Color(0xFF606A85),
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed(
                    'Tramite',
                    extra: <String, dynamic>{
                      kTransitionInfoKey: TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
              ),
              Text(
                'Trámites',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito',
                      color: valueOrDefault<Color>(
                        widget.paginaSelecionada == 2
                            ? Color(0xFF407BFF)
                            : Color(0xFF606A85),
                        Color(0xFF606A85),
                      ),
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kfiRrBell,
                  color: valueOrDefault<Color>(
                    widget.paginaSelecionada == 3
                        ? Color(0xFF407BFF)
                        : Color(0xFF606A85),
                    Color(0xFF606A85),
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('AdminAvisos');
                },
              ),
              Text(
                'Avisos',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito',
                      color: valueOrDefault<Color>(
                        widget.paginaSelecionada == 3
                            ? Color(0xFF407BFF)
                            : Color(0xFF606A85),
                        Color(0xFF606A85),
                      ),
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FlutterFlowIconButton(
                borderColor: Colors.transparent,
                borderRadius: 8.0,
                buttonSize: 40.0,
                icon: Icon(
                  FFIcons.kfiRrUser,
                  color: valueOrDefault<Color>(
                    widget.paginaSelecionada == 4
                        ? Color(0xFF407BFF)
                        : Color(0xFF606A85),
                    Color(0xFF606A85),
                  ),
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('cuenta');
                },
              ),
              Text(
                'Cuenta',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Nunito',
                      color: valueOrDefault<Color>(
                        widget.paginaSelecionada == 4
                            ? Color(0xFF407BFF)
                            : Color(0xFF606A85),
                        Color(0xFF606A85),
                      ),
                      letterSpacing: 0.3,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
