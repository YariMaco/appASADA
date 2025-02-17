import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AvisosRecord extends FirestoreRecord {
  AvisosRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "destinatario" field.
  String? _destinatario;
  String get destinatario => _destinatario ?? '';
  bool hasDestinatario() => _destinatario != null;

  // "tituloAviso" field.
  String? _tituloAviso;
  String get tituloAviso => _tituloAviso ?? '';
  bool hasTituloAviso() => _tituloAviso != null;

  // "tipoAviso" field.
  String? _tipoAviso;
  String get tipoAviso => _tipoAviso ?? '';
  bool hasTipoAviso() => _tipoAviso != null;

  // "cuerpoAviso" field.
  String? _cuerpoAviso;
  String get cuerpoAviso => _cuerpoAviso ?? '';
  bool hasCuerpoAviso() => _cuerpoAviso != null;

  // "fechaAviso" field.
  DateTime? _fechaAviso;
  DateTime? get fechaAviso => _fechaAviso;
  bool hasFechaAviso() => _fechaAviso != null;

  void _initializeFields() {
    _destinatario = snapshotData['destinatario'] as String?;
    _tituloAviso = snapshotData['tituloAviso'] as String?;
    _tipoAviso = snapshotData['tipoAviso'] as String?;
    _cuerpoAviso = snapshotData['cuerpoAviso'] as String?;
    _fechaAviso = snapshotData['fechaAviso'] as DateTime?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('avisos');

  static Stream<AvisosRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AvisosRecord.fromSnapshot(s));

  static Future<AvisosRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AvisosRecord.fromSnapshot(s));

  static AvisosRecord fromSnapshot(DocumentSnapshot snapshot) => AvisosRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AvisosRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AvisosRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AvisosRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AvisosRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAvisosRecordData({
  String? destinatario,
  String? tituloAviso,
  String? tipoAviso,
  String? cuerpoAviso,
  DateTime? fechaAviso,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'destinatario': destinatario,
      'tituloAviso': tituloAviso,
      'tipoAviso': tipoAviso,
      'cuerpoAviso': cuerpoAviso,
      'fechaAviso': fechaAviso,
    }.withoutNulls,
  );

  return firestoreData;
}

class AvisosRecordDocumentEquality implements Equality<AvisosRecord> {
  const AvisosRecordDocumentEquality();

  @override
  bool equals(AvisosRecord? e1, AvisosRecord? e2) {
    return e1?.destinatario == e2?.destinatario &&
        e1?.tituloAviso == e2?.tituloAviso &&
        e1?.tipoAviso == e2?.tipoAviso &&
        e1?.cuerpoAviso == e2?.cuerpoAviso &&
        e1?.fechaAviso == e2?.fechaAviso;
  }

  @override
  int hash(AvisosRecord? e) => const ListEquality().hash([
        e?.destinatario,
        e?.tituloAviso,
        e?.tipoAviso,
        e?.cuerpoAviso,
        e?.fechaAviso
      ]);

  @override
  bool isValidKey(Object? o) => o is AvisosRecord;
}
