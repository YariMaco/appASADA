import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';

import '/auth/base_auth_user_provider.dart';

import '/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? HomePageWidget() : InicialWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? HomePageWidget() : InicialWidget(),
        ),
        FFRoute(
          name: 'Inicial',
          path: '/inicial',
          builder: (context, params) => InicialWidget(),
        ),
        FFRoute(
          name: 'Onboarding',
          path: '/onboarding',
          builder: (context, params) => OnboardingWidget(),
        ),
        FFRoute(
          name: 'HomePage',
          path: '/homePage',
          builder: (context, params) => HomePageWidget(),
        ),
        FFRoute(
          name: 'FacturaOtro',
          path: '/facturaOtro',
          builder: (context, params) => FacturaOtroWidget(),
        ),
        FFRoute(
          name: 'Mapa',
          path: '/mapa',
          builder: (context, params) => MapaWidget(),
        ),
        FFRoute(
          name: 'Historial',
          path: '/historial',
          builder: (context, params) => HistorialWidget(
            abonadoref: params.getParam(
              'abonadoref',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['abonados'],
            ),
          ),
        ),
        FFRoute(
          name: 'Registro',
          path: '/registro',
          builder: (context, params) => RegistroWidget(),
        ),
        FFRoute(
          name: 'InicioSesion',
          path: '/inicioSesion',
          builder: (context, params) => InicioSesionWidget(),
        ),
        FFRoute(
          name: 'editarCuenta',
          path: '/editarCuenta',
          builder: (context, params) => EditarCuentaWidget(),
        ),
        FFRoute(
          name: 'cambiarContrasena',
          path: '/cambiarContrasena',
          builder: (context, params) => CambiarContrasenaWidget(),
        ),
        FFRoute(
          name: 'idioma',
          path: '/idioma',
          builder: (context, params) => IdiomaWidget(),
        ),
        FFRoute(
          name: 'notificaciones',
          path: '/notificaciones',
          builder: (context, params) => NotificacionesWidget(),
        ),
        FFRoute(
          name: 'eliminarCuenta',
          path: '/eliminarCuenta',
          builder: (context, params) => EliminarCuentaWidget(),
        ),
        FFRoute(
          name: 'cerrarSesion',
          path: '/cerrarSesion',
          builder: (context, params) => CerrarSesionWidget(),
        ),
        FFRoute(
          name: 'NuevoAviso',
          path: '/nuevoAviso',
          builder: (context, params) => NuevoAvisoWidget(),
        ),
        FFRoute(
          name: 'AdminAvisos',
          path: '/adminAvisos',
          builder: (context, params) => AdminAvisosWidget(),
        ),
        FFRoute(
          name: 'Financiero',
          path: '/financiero',
          builder: (context, params) => FinancieroWidget(),
        ),
        FFRoute(
          name: 'cuenta',
          path: '/cuenta',
          builder: (context, params) => CuentaWidget(),
        ),
        FFRoute(
          name: 'Horario',
          path: '/horario',
          builder: (context, params) => HorarioWidget(
            paramAsadaRef: params.getParam(
              'paramAsadaRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['asadas'],
            ),
          ),
        ),
        FFRoute(
          name: 'HomePageAdmin',
          path: '/homePageAdmin',
          builder: (context, params) => HomePageAdminWidget(),
        ),
        FFRoute(
          name: 'ManejoUsuarios',
          path: '/manejoUsuarios',
          builder: (context, params) => ManejoUsuariosWidget(),
        ),
        FFRoute(
          name: 'ListaMedidores',
          path: '/listaMedidores',
          builder: (context, params) => ListaMedidoresWidget(),
        ),
        FFRoute(
          name: 'LecturaNueva',
          path: '/lecturaNueva',
          builder: (context, params) => LecturaNuevaWidget(
            paramMedidor: params.getParam(
              'paramMedidor',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['medidores'],
            ),
            lecturaAnterior: params.getParam(
              'lecturaAnterior',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: 'BuscarClientes',
          path: '/buscarClientes',
          builder: (context, params) => BuscarClientesWidget(),
        ),
        FFRoute(
          name: 'BuscarAbonados',
          path: '/buscarAbonados',
          builder: (context, params) => BuscarAbonadosWidget(),
        ),
        FFRoute(
          name: 'informacionGeneral',
          path: '/informacionGeneral',
          builder: (context, params) => InformacionGeneralWidget(),
        ),
        FFRoute(
          name: 'EditarLectura',
          path: '/editarLectura',
          builder: (context, params) => EditarLecturaWidget(
            paramLecturaRef: params.getParam(
              'paramLecturaRef',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['lecturas'],
            ),
          ),
        ),
        FFRoute(
          name: 'HistorialAverias',
          path: '/historialAverias',
          builder: (context, params) => HistorialAveriasWidget(),
        ),
        FFRoute(
          name: 'AdminClientes',
          path: '/adminClientes',
          builder: (context, params) => AdminClientesWidget(),
        ),
        FFRoute(
          name: 'EliminarCliente',
          path: '/eliminarCliente',
          builder: (context, params) => EliminarClienteWidget(),
        ),
        FFRoute(
          name: 'AdminAbonados',
          path: '/adminAbonados',
          builder: (context, params) => AdminAbonadosWidget(),
        ),
        FFRoute(
          name: 'EliminarAbonado',
          path: '/eliminarAbonado',
          builder: (context, params) => EliminarAbonadoWidget(),
        ),
        FFRoute(
          name: 'DetallesAveria',
          path: '/detallesAveria',
          builder: (context, params) => DetallesAveriaWidget(
            paramAverias: params.getParam(
              'paramAverias',
              ParamType.LatLng,
            ),
            paramAveria: params.getParam(
              'paramAveria',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['averias'],
            ),
          ),
        ),
        FFRoute(
          name: 'Tramite',
          path: '/tramite',
          builder: (context, params) => TramiteWidget(),
        ),
        FFRoute(
          name: 'CrearTramite',
          path: '/crearTramite',
          builder: (context, params) => CrearTramiteWidget(),
        ),
        FFRoute(
          name: 'EditarTramite',
          path: '/editarTramite',
          asyncParams: {
            'paramTramite': getDoc(['tramites'], TramitesRecord.fromSnapshot),
          },
          builder: (context, params) => EditarTramiteWidget(
            paramTramite: params.getParam(
              'paramTramite',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'GenerarCarta',
          path: '/generarCarta',
          asyncParams: {
            'tramiteParam': getDoc(['tramites'], TramitesRecord.fromSnapshot),
          },
          builder: (context, params) => GenerarCartaWidget(
            tramiteParam: params.getParam(
              'tramiteParam',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'CartaLista',
          path: '/cartaLista',
          builder: (context, params) => CartaListaWidget(
            cartaLista: params.getParam(
              'cartaLista',
              ParamType.FFUploadedFile,
            ),
          ),
        ),
        FFRoute(
          name: 'FacturaDuenoCopy',
          path: '/facturaDuenoCopy',
          asyncParams: {
            'encabezado': getDoc(['encabezado'], EncabezadoRecord.fromSnapshot),
            'detalles': getDoc(['detalles'], DetallesRecord.fromSnapshot),
          },
          builder: (context, params) => FacturaDuenoCopyWidget(
            encabezado: params.getParam(
              'encabezado',
              ParamType.Document,
            ),
            detalles: params.getParam(
              'detalles',
              ParamType.Document,
            ),
          ),
        ),
        FFRoute(
          name: 'FacAnterior',
          path: '/facAnterior',
          builder: (context, params) => FacAnteriorWidget(
            infoAbonado: params.getParam(
              'infoAbonado',
              ParamType.DocumentReference,
              isList: false,
              collectionNamePath: ['abonados'],
            ),
          ),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/inicial';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
