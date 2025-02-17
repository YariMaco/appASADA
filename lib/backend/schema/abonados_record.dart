import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AbonadosRecord extends FirestoreRecord {
  AbonadosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreCompleto" field.
  String? _nombreCompleto;
  String get nombreCompleto => _nombreCompleto ?? '';
  bool hasNombreCompleto() => _nombreCompleto != null;

  // "cedula" field.
  String? _cedula;
  String get cedula => _cedula ?? '';
  bool hasCedula() => _cedula != null;

  // "tipoPersona" field.
  String? _tipoPersona;
  String get tipoPersona => _tipoPersona ?? '';
  bool hasTipoPersona() => _tipoPersona != null;

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  void _initializeFields() {
    _nombreCompleto = snapshotData['nombreCompleto'] as String?;
    _cedula = snapshotData['cedula'] as String?;
    _tipoPersona = snapshotData['tipoPersona'] as String?;
    _email = snapshotData['email'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _direccion = snapshotData['direccion'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('abonados');

  static Stream<AbonadosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AbonadosRecord.fromSnapshot(s));

  static Future<AbonadosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AbonadosRecord.fromSnapshot(s));

  static AbonadosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AbonadosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AbonadosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AbonadosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AbonadosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AbonadosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAbonadosRecordData({
  String? nombreCompleto,
  String? cedula,
  String? tipoPersona,
  String? email,
  String? telefono,
  String? direccion,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreCompleto': nombreCompleto,
      'cedula': cedula,
      'tipoPersona': tipoPersona,
      'email': email,
      'telefono': telefono,
      'direccion': direccion,
    }.withoutNulls,
  );

  return firestoreData;
}

class AbonadosRecordDocumentEquality implements Equality<AbonadosRecord> {
  const AbonadosRecordDocumentEquality();

  @override
  bool equals(AbonadosRecord? e1, AbonadosRecord? e2) {
    return e1?.nombreCompleto == e2?.nombreCompleto &&
        e1?.cedula == e2?.cedula &&
        e1?.tipoPersona == e2?.tipoPersona &&
        e1?.email == e2?.email &&
        e1?.telefono == e2?.telefono &&
        e1?.direccion == e2?.direccion;
  }

  @override
  int hash(AbonadosRecord? e) => const ListEquality().hash([
        e?.nombreCompleto,
        e?.cedula,
        e?.tipoPersona,
        e?.email,
        e?.telefono,
        e?.direccion
      ]);

  @override
  bool isValidKey(Object? o) => o is AbonadosRecord;
}
