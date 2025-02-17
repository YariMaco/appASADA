import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TramitesRecord extends FirestoreRecord {
  TramitesRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "requisitos" field.
  String? _requisitos;
  String get requisitos => _requisitos ?? '';
  bool hasRequisitos() => _requisitos != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _requisitos = snapshotData['requisitos'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tramites');

  static Stream<TramitesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TramitesRecord.fromSnapshot(s));

  static Future<TramitesRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TramitesRecord.fromSnapshot(s));

  static TramitesRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TramitesRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TramitesRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TramitesRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TramitesRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TramitesRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTramitesRecordData({
  String? nombre,
  String? requisitos,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'requisitos': requisitos,
    }.withoutNulls,
  );

  return firestoreData;
}

class TramitesRecordDocumentEquality implements Equality<TramitesRecord> {
  const TramitesRecordDocumentEquality();

  @override
  bool equals(TramitesRecord? e1, TramitesRecord? e2) {
    return e1?.nombre == e2?.nombre && e1?.requisitos == e2?.requisitos;
  }

  @override
  int hash(TramitesRecord? e) =>
      const ListEquality().hash([e?.nombre, e?.requisitos]);

  @override
  bool isValidKey(Object? o) => o is TramitesRecord;
}
