import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DetallesRecord extends FirestoreRecord {
  DetallesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "cantidad" field.
  int? _cantidad;
  int get cantidad => _cantidad ?? 0;
  bool hasCantidad() => _cantidad != null;

  // "tarifa" field.
  double? _tarifa;
  double get tarifa => _tarifa ?? 0.0;
  bool hasTarifa() => _tarifa != null;

  // "subtotal" field.
  double? _subtotal;
  double get subtotal => _subtotal ?? 0.0;
  bool hasSubtotal() => _subtotal != null;

  // "consumo" field.
  double? _consumo;
  double get consumo => _consumo ?? 0.0;
  bool hasConsumo() => _consumo != null;

  // "iva" field.
  double? _iva;
  double get iva => _iva ?? 0.0;
  bool hasIva() => _iva != null;

  // "servicio" field.
  String? _servicio;
  String get servicio => _servicio ?? '';
  bool hasServicio() => _servicio != null;

  // "montoBase" field.
  double? _montoBase;
  double get montoBase => _montoBase ?? 0.0;
  bool hasMontoBase() => _montoBase != null;

  // "encabezado" field.
  DocumentReference? _encabezado;
  DocumentReference? get encabezado => _encabezado;
  bool hasEncabezado() => _encabezado != null;

  void _initializeFields() {
    _cantidad = castToType<int>(snapshotData['cantidad']);
    _tarifa = castToType<double>(snapshotData['tarifa']);
    _subtotal = castToType<double>(snapshotData['subtotal']);
    _consumo = castToType<double>(snapshotData['consumo']);
    _iva = castToType<double>(snapshotData['iva']);
    _servicio = snapshotData['servicio'] as String?;
    _montoBase = castToType<double>(snapshotData['montoBase']);
    _encabezado = snapshotData['encabezado'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('detalles');

  static Stream<DetallesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DetallesRecord.fromSnapshot(s));

  static Future<DetallesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DetallesRecord.fromSnapshot(s));

  static DetallesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DetallesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DetallesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DetallesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DetallesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DetallesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDetallesRecordData({
  int? cantidad,
  double? tarifa,
  double? subtotal,
  double? consumo,
  double? iva,
  String? servicio,
  double? montoBase,
  DocumentReference? encabezado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'cantidad': cantidad,
      'tarifa': tarifa,
      'subtotal': subtotal,
      'consumo': consumo,
      'iva': iva,
      'servicio': servicio,
      'montoBase': montoBase,
      'encabezado': encabezado,
    }.withoutNulls,
  );

  return firestoreData;
}

class DetallesRecordDocumentEquality implements Equality<DetallesRecord> {
  const DetallesRecordDocumentEquality();

  @override
  bool equals(DetallesRecord? e1, DetallesRecord? e2) {
    return e1?.cantidad == e2?.cantidad &&
        e1?.tarifa == e2?.tarifa &&
        e1?.subtotal == e2?.subtotal &&
        e1?.consumo == e2?.consumo &&
        e1?.iva == e2?.iva &&
        e1?.servicio == e2?.servicio &&
        e1?.montoBase == e2?.montoBase &&
        e1?.encabezado == e2?.encabezado;
  }

  @override
  int hash(DetallesRecord? e) => const ListEquality().hash([
        e?.cantidad,
        e?.tarifa,
        e?.subtotal,
        e?.consumo,
        e?.iva,
        e?.servicio,
        e?.montoBase,
        e?.encabezado
      ]);

  @override
  bool isValidKey(Object? o) => o is DetallesRecord;
}
