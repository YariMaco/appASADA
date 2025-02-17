import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LecturasRecord extends FirestoreRecord {
  LecturasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "fechaLectura" field.
  DateTime? _fechaLectura;
  DateTime? get fechaLectura => _fechaLectura;
  bool hasFechaLectura() => _fechaLectura != null;

  // "comentario" field.
  String? _comentario;
  String get comentario => _comentario ?? '';
  bool hasComentario() => _comentario != null;

  // "registradoPor" field.
  String? _registradoPor;
  String get registradoPor => _registradoPor ?? '';
  bool hasRegistradoPor() => _registradoPor != null;

  // "foto" field.
  String? _foto;
  String get foto => _foto ?? '';
  bool hasFoto() => _foto != null;

  // "medidor" field.
  DocumentReference? _medidor;
  DocumentReference? get medidor => _medidor;
  bool hasMedidor() => _medidor != null;

  // "consumo" field.
  int? _consumo;
  int get consumo => _consumo ?? 0;
  bool hasConsumo() => _consumo != null;

  // "lecturaActual" field.
  int? _lecturaActual;
  int get lecturaActual => _lecturaActual ?? 0;
  bool hasLecturaActual() => _lecturaActual != null;

  // "lecturaAnterior" field.
  int? _lecturaAnterior;
  int get lecturaAnterior => _lecturaAnterior ?? 0;
  bool hasLecturaAnterior() => _lecturaAnterior != null;

  // "lista" field.
  bool? _lista;
  bool get lista => _lista ?? false;
  bool hasLista() => _lista != null;

  void _initializeFields() {
    _fechaLectura = snapshotData['fechaLectura'] as DateTime?;
    _comentario = snapshotData['comentario'] as String?;
    _registradoPor = snapshotData['registradoPor'] as String?;
    _foto = snapshotData['foto'] as String?;
    _medidor = snapshotData['medidor'] as DocumentReference?;
    _consumo = castToType<int>(snapshotData['consumo']);
    _lecturaActual = castToType<int>(snapshotData['lecturaActual']);
    _lecturaAnterior = castToType<int>(snapshotData['lecturaAnterior']);
    _lista = snapshotData['lista'] as bool?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('lecturas');

  static Stream<LecturasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LecturasRecord.fromSnapshot(s));

  static Future<LecturasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LecturasRecord.fromSnapshot(s));

  static LecturasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LecturasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LecturasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LecturasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LecturasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LecturasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLecturasRecordData({
  DateTime? fechaLectura,
  String? comentario,
  String? registradoPor,
  String? foto,
  DocumentReference? medidor,
  int? consumo,
  int? lecturaActual,
  int? lecturaAnterior,
  bool? lista,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'fechaLectura': fechaLectura,
      'comentario': comentario,
      'registradoPor': registradoPor,
      'foto': foto,
      'medidor': medidor,
      'consumo': consumo,
      'lecturaActual': lecturaActual,
      'lecturaAnterior': lecturaAnterior,
      'lista': lista,
    }.withoutNulls,
  );

  return firestoreData;
}

class LecturasRecordDocumentEquality implements Equality<LecturasRecord> {
  const LecturasRecordDocumentEquality();

  @override
  bool equals(LecturasRecord? e1, LecturasRecord? e2) {
    return e1?.fechaLectura == e2?.fechaLectura &&
        e1?.comentario == e2?.comentario &&
        e1?.registradoPor == e2?.registradoPor &&
        e1?.foto == e2?.foto &&
        e1?.medidor == e2?.medidor &&
        e1?.consumo == e2?.consumo &&
        e1?.lecturaActual == e2?.lecturaActual &&
        e1?.lecturaAnterior == e2?.lecturaAnterior &&
        e1?.lista == e2?.lista;
  }

  @override
  int hash(LecturasRecord? e) => const ListEquality().hash([
        e?.fechaLectura,
        e?.comentario,
        e?.registradoPor,
        e?.foto,
        e?.medidor,
        e?.consumo,
        e?.lecturaActual,
        e?.lecturaAnterior,
        e?.lista
      ]);

  @override
  bool isValidKey(Object? o) => o is LecturasRecord;
}
