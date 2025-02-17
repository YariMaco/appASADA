import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EncabezadoRecord extends FirestoreRecord {
  EncabezadoRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "consecutivo" field.
  int? _consecutivo;
  int get consecutivo => _consecutivo ?? 0;
  bool hasConsecutivo() => _consecutivo != null;

  // "fecha" field.
  DateTime? _fecha;
  DateTime? get fecha => _fecha;
  bool hasFecha() => _fecha != null;

  // "emisor" field.
  DocumentReference? _emisor;
  DocumentReference? get emisor => _emisor;
  bool hasEmisor() => _emisor != null;

  // "receptor" field.
  DocumentReference? _receptor;
  DocumentReference? get receptor => _receptor;
  bool hasReceptor() => _receptor != null;

  // "total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "vence" field.
  DateTime? _vence;
  DateTime? get vence => _vence;
  bool hasVence() => _vence != null;

  // "pagada" field.
  bool? _pagada;
  bool get pagada => _pagada ?? false;
  bool hasPagada() => _pagada != null;

  void _initializeFields() {
    _consecutivo = castToType<int>(snapshotData['consecutivo']);
    _fecha = snapshotData['fecha'] as DateTime?;
    _emisor = snapshotData['emisor'] as DocumentReference?;
    _receptor = snapshotData['receptor'] as DocumentReference?;
    _total = castToType<double>(snapshotData['total']);
    _vence = snapshotData['vence'] as DateTime?;
    _pagada = snapshotData['pagada'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('encabezado');

  static Stream<EncabezadoRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EncabezadoRecord.fromSnapshot(s));

  static Future<EncabezadoRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EncabezadoRecord.fromSnapshot(s));

  static EncabezadoRecord fromSnapshot(DocumentSnapshot snapshot) =>
      EncabezadoRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EncabezadoRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EncabezadoRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EncabezadoRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EncabezadoRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEncabezadoRecordData({
  int? consecutivo,
  DateTime? fecha,
  DocumentReference? emisor,
  DocumentReference? receptor,
  double? total,
  DateTime? vence,
  bool? pagada,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'consecutivo': consecutivo,
      'fecha': fecha,
      'emisor': emisor,
      'receptor': receptor,
      'total': total,
      'vence': vence,
      'pagada': pagada,
    }.withoutNulls,
  );

  return firestoreData;
}

class EncabezadoRecordDocumentEquality implements Equality<EncabezadoRecord> {
  const EncabezadoRecordDocumentEquality();

  @override
  bool equals(EncabezadoRecord? e1, EncabezadoRecord? e2) {
    return e1?.consecutivo == e2?.consecutivo &&
        e1?.fecha == e2?.fecha &&
        e1?.emisor == e2?.emisor &&
        e1?.receptor == e2?.receptor &&
        e1?.total == e2?.total &&
        e1?.vence == e2?.vence &&
        e1?.pagada == e2?.pagada;
  }

  @override
  int hash(EncabezadoRecord? e) => const ListEquality().hash([
        e?.consecutivo,
        e?.fecha,
        e?.emisor,
        e?.receptor,
        e?.total,
        e?.vence,
        e?.pagada
      ]);

  @override
  bool isValidKey(Object? o) => o is EncabezadoRecord;
}
