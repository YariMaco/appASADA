import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class MedidoresRecord extends FirestoreRecord {
  MedidoresRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "estado" field.
  bool? _estado;
  bool get estado => _estado ?? false;
  bool hasEstado() => _estado != null;

  // "fechaInstalacion" field.
  DateTime? _fechaInstalacion;
  DateTime? get fechaInstalacion => _fechaInstalacion;
  bool hasFechaInstalacion() => _fechaInstalacion != null;

  // "abonado" field.
  DocumentReference? _abonado;
  DocumentReference? get abonado => _abonado;
  bool hasAbonado() => _abonado != null;

  // "tarifa" field.
  DocumentReference? _tarifa;
  DocumentReference? get tarifa => _tarifa;
  bool hasTarifa() => _tarifa != null;

  // "codigoAsignado" field.
  String? _codigoAsignado;
  String get codigoAsignado => _codigoAsignado ?? '';
  bool hasCodigoAsignado() => _codigoAsignado != null;

  // "montoBase" field.
  DocumentReference? _montoBase;
  DocumentReference? get montoBase => _montoBase;
  bool hasMontoBase() => _montoBase != null;

  void _initializeFields() {
    _direccion = snapshotData['direccion'] as String?;
    _estado = snapshotData['estado'] as bool?;
    _fechaInstalacion = snapshotData['fechaInstalacion'] as DateTime?;
    _abonado = snapshotData['abonado'] as DocumentReference?;
    _tarifa = snapshotData['tarifa'] as DocumentReference?;
    _codigoAsignado = snapshotData['codigoAsignado'] as String?;
    _montoBase = snapshotData['montoBase'] as DocumentReference?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('medidores');

  static Stream<MedidoresRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => MedidoresRecord.fromSnapshot(s));

  static Future<MedidoresRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => MedidoresRecord.fromSnapshot(s));

  static MedidoresRecord fromSnapshot(DocumentSnapshot snapshot) =>
      MedidoresRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static MedidoresRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      MedidoresRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'MedidoresRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is MedidoresRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createMedidoresRecordData({
  String? direccion,
  bool? estado,
  DateTime? fechaInstalacion,
  DocumentReference? abonado,
  DocumentReference? tarifa,
  String? codigoAsignado,
  DocumentReference? montoBase,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'direccion': direccion,
      'estado': estado,
      'fechaInstalacion': fechaInstalacion,
      'abonado': abonado,
      'tarifa': tarifa,
      'codigoAsignado': codigoAsignado,
      'montoBase': montoBase,
    }.withoutNulls,
  );

  return firestoreData;
}

class MedidoresRecordDocumentEquality implements Equality<MedidoresRecord> {
  const MedidoresRecordDocumentEquality();

  @override
  bool equals(MedidoresRecord? e1, MedidoresRecord? e2) {
    return e1?.direccion == e2?.direccion &&
        e1?.estado == e2?.estado &&
        e1?.fechaInstalacion == e2?.fechaInstalacion &&
        e1?.abonado == e2?.abonado &&
        e1?.tarifa == e2?.tarifa &&
        e1?.codigoAsignado == e2?.codigoAsignado &&
        e1?.montoBase == e2?.montoBase;
  }

  @override
  int hash(MedidoresRecord? e) => const ListEquality().hash([
        e?.direccion,
        e?.estado,
        e?.fechaInstalacion,
        e?.abonado,
        e?.tarifa,
        e?.codigoAsignado,
        e?.montoBase
      ]);

  @override
  bool isValidKey(Object? o) => o is MedidoresRecord;
}
