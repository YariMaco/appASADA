import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _listaUsuarios = prefs
              .getStringList('ff_listaUsuarios')
              ?.map((path) => path.ref)
              .toList() ??
          _listaUsuarios;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _imagenLugar = '';
  String get imagenLugar => _imagenLugar;
  set imagenLugar(String value) {
    _imagenLugar = value;
  }

  DocumentReference? _selectRowRef;
  DocumentReference? get selectRowRef => _selectRowRef;
  set selectRowRef(DocumentReference? value) {
    _selectRowRef = value;
  }

  DocumentReference? _asada =
      FirebaseFirestore.instance.doc('/asadas/uFGm1B8IBZEgwsDHhHMU');
  DocumentReference? get asada => _asada;
  set asada(DocumentReference? value) {
    _asada = value;
  }

  DocumentReference? _cedula;
  DocumentReference? get cedula => _cedula;
  set cedula(DocumentReference? value) {
    _cedula = value;
  }

  int _cantidadMedidores = 0;
  int get cantidadMedidores => _cantidadMedidores;
  set cantidadMedidores(int value) {
    _cantidadMedidores = value;
  }

  List<DocumentReference> _listaUsuarios = [
    FirebaseFirestore.instance.doc('/users/uh16dbE1qKTjrPO2c3Rn5393Q5p1'),
    FirebaseFirestore.instance.doc('/users/u2aiFvUD8Mhu3esPZkEf3qutU0x2'),
    FirebaseFirestore.instance.doc('/users/norSBi7GdbaZZcxQW7Nfjsiom0f2'),
    FirebaseFirestore.instance.doc('/users/cLRA1pnNetWLFCmphYuNLejXnAu1'),
    FirebaseFirestore.instance.doc('/users/ZjpOnpgLsZSunJfZ56bJuAYU3dC3'),
    FirebaseFirestore.instance.doc('/users/smN2fPV7lAiWsMFGezna')
  ];
  List<DocumentReference> get listaUsuarios => _listaUsuarios;
  set listaUsuarios(List<DocumentReference> value) {
    _listaUsuarios = value;
    prefs.setStringList('ff_listaUsuarios', value.map((x) => x.path).toList());
  }

  void addToListaUsuarios(DocumentReference value) {
    listaUsuarios.add(value);
    prefs.setStringList(
        'ff_listaUsuarios', _listaUsuarios.map((x) => x.path).toList());
  }

  void removeFromListaUsuarios(DocumentReference value) {
    listaUsuarios.remove(value);
    prefs.setStringList(
        'ff_listaUsuarios', _listaUsuarios.map((x) => x.path).toList());
  }

  void removeAtIndexFromListaUsuarios(int index) {
    listaUsuarios.removeAt(index);
    prefs.setStringList(
        'ff_listaUsuarios', _listaUsuarios.map((x) => x.path).toList());
  }

  void updateListaUsuariosAtIndex(
    int index,
    DocumentReference Function(DocumentReference) updateFn,
  ) {
    listaUsuarios[index] = updateFn(_listaUsuarios[index]);
    prefs.setStringList(
        'ff_listaUsuarios', _listaUsuarios.map((x) => x.path).toList());
  }

  void insertAtIndexInListaUsuarios(int index, DocumentReference value) {
    listaUsuarios.insert(index, value);
    prefs.setStringList(
        'ff_listaUsuarios', _listaUsuarios.map((x) => x.path).toList());
  }

  String _estadoFinanciero =
      'https://firebasestorage.googleapis.com/v0/b/asada-csle299.firebasestorage.app/o/users%2FZjpOnpgLsZSunJfZ56bJuAYU3dC3%2Fuploads%2F1733615777880000.pdf?alt=media&token=f1c5ab8c-6c9c-4623-b47e-1ae8c4e1f281';
  String get estadoFinanciero => _estadoFinanciero;
  set estadoFinanciero(String value) {
    _estadoFinanciero = value;
  }

  DateTime? _facturasRealizadas =
      DateTime.fromMillisecondsSinceEpoch(1730956380000);
  DateTime? get facturasRealizadas => _facturasRealizadas;
  set facturasRealizadas(DateTime? value) {
    _facturasRealizadas = value;
  }

  bool _busquedaActiva = false;
  bool get busquedaActiva => _busquedaActiva;
  set busquedaActiva(bool value) {
    _busquedaActiva = value;
  }

  String _identificacion = '';
  String get identificacion => _identificacion;
  set identificacion(String value) {
    _identificacion = value;
  }

  bool _leida = false;
  bool get leida => _leida;
  set leida(bool value) {
    _leida = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
