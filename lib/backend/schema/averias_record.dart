import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AveriasRecord extends FirestoreRecord {
  AveriasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "coordenadas" field.
  LatLng? _coordenadas;
  LatLng? get coordenadas => _coordenadas;
  bool hasCoordenadas() => _coordenadas != null;

  // "estado" field.
  String? _estado;
  String get estado => _estado ?? '';
  bool hasEstado() => _estado != null;

  void _initializeFields() {
    _direccion = snapshotData['direccion'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _coordenadas = snapshotData['coordenadas'] as LatLng?;
    _estado = snapshotData['estado'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('averias');

  static Stream<AveriasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AveriasRecord.fromSnapshot(s));

  static Future<AveriasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AveriasRecord.fromSnapshot(s));

  static AveriasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      AveriasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AveriasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AveriasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AveriasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AveriasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAveriasRecordData({
  String? direccion,
  String? descripcion,
  LatLng? coordenadas,
  String? estado,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'direccion': direccion,
      'descripcion': descripcion,
      'coordenadas': coordenadas,
      'estado': estado,
    }.withoutNulls,
  );

  return firestoreData;
}

class AveriasRecordDocumentEquality implements Equality<AveriasRecord> {
  const AveriasRecordDocumentEquality();

  @override
  bool equals(AveriasRecord? e1, AveriasRecord? e2) {
    return e1?.direccion == e2?.direccion &&
        e1?.descripcion == e2?.descripcion &&
        e1?.coordenadas == e2?.coordenadas &&
        e1?.estado == e2?.estado;
  }

  @override
  int hash(AveriasRecord? e) => const ListEquality()
      .hash([e?.direccion, e?.descripcion, e?.coordenadas, e?.estado]);

  @override
  bool isValidKey(Object? o) => o is AveriasRecord;
}
