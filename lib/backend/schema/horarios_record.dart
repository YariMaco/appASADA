import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class HorariosRecord extends FirestoreRecord {
  HorariosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "dia" field.
  String? _dia;
  String get dia => _dia ?? '';
  bool hasDia() => _dia != null;

  // "cerrado" field.
  bool? _cerrado;
  bool get cerrado => _cerrado ?? false;
  bool hasCerrado() => _cerrado != null;

  // "horaInicio" field.
  String? _horaInicio;
  String get horaInicio => _horaInicio ?? '';
  bool hasHoraInicio() => _horaInicio != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _dia = snapshotData['dia'] as String?;
    _cerrado = snapshotData['cerrado'] as bool?;
    _horaInicio = snapshotData['horaInicio'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('horarios')
          : FirebaseFirestore.instance.collectionGroup('horarios');

  static DocumentReference createDoc(DocumentReference parent, {String? id}) =>
      parent.collection('horarios').doc(id);

  static Stream<HorariosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => HorariosRecord.fromSnapshot(s));

  static Future<HorariosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => HorariosRecord.fromSnapshot(s));

  static HorariosRecord fromSnapshot(DocumentSnapshot snapshot) =>
      HorariosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static HorariosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      HorariosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'HorariosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is HorariosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createHorariosRecordData({
  String? dia,
  bool? cerrado,
  String? horaInicio,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'dia': dia,
      'cerrado': cerrado,
      'horaInicio': horaInicio,
    }.withoutNulls,
  );

  return firestoreData;
}

class HorariosRecordDocumentEquality implements Equality<HorariosRecord> {
  const HorariosRecordDocumentEquality();

  @override
  bool equals(HorariosRecord? e1, HorariosRecord? e2) {
    return e1?.dia == e2?.dia &&
        e1?.cerrado == e2?.cerrado &&
        e1?.horaInicio == e2?.horaInicio;
  }

  @override
  int hash(HorariosRecord? e) =>
      const ListEquality().hash([e?.dia, e?.cerrado, e?.horaInicio]);

  @override
  bool isValidKey(Object? o) => o is HorariosRecord;
}
