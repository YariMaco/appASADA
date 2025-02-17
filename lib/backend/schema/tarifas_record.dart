import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class TarifasRecord extends FirestoreRecord {
  TarifasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombreServicio" field.
  String? _nombreServicio;
  String get nombreServicio => _nombreServicio ?? '';
  bool hasNombreServicio() => _nombreServicio != null;

  // "descripcion" field.
  String? _descripcion;
  String get descripcion => _descripcion ?? '';
  bool hasDescripcion() => _descripcion != null;

  // "moneda" field.
  String? _moneda;
  String get moneda => _moneda ?? '';
  bool hasMoneda() => _moneda != null;

  // "precio" field.
  double? _precio;
  double get precio => _precio ?? 0.0;
  bool hasPrecio() => _precio != null;

  // "unidad" field.
  String? _unidad;
  String get unidad => _unidad ?? '';
  bool hasUnidad() => _unidad != null;

  void _initializeFields() {
    _nombreServicio = snapshotData['nombreServicio'] as String?;
    _descripcion = snapshotData['descripcion'] as String?;
    _moneda = snapshotData['moneda'] as String?;
    _precio = castToType<double>(snapshotData['precio']);
    _unidad = snapshotData['unidad'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('tarifas');

  static Stream<TarifasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => TarifasRecord.fromSnapshot(s));

  static Future<TarifasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => TarifasRecord.fromSnapshot(s));

  static TarifasRecord fromSnapshot(DocumentSnapshot snapshot) =>
      TarifasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static TarifasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      TarifasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'TarifasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is TarifasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createTarifasRecordData({
  String? nombreServicio,
  String? descripcion,
  String? moneda,
  double? precio,
  String? unidad,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombreServicio': nombreServicio,
      'descripcion': descripcion,
      'moneda': moneda,
      'precio': precio,
      'unidad': unidad,
    }.withoutNulls,
  );

  return firestoreData;
}

class TarifasRecordDocumentEquality implements Equality<TarifasRecord> {
  const TarifasRecordDocumentEquality();

  @override
  bool equals(TarifasRecord? e1, TarifasRecord? e2) {
    return e1?.nombreServicio == e2?.nombreServicio &&
        e1?.descripcion == e2?.descripcion &&
        e1?.moneda == e2?.moneda &&
        e1?.precio == e2?.precio &&
        e1?.unidad == e2?.unidad;
  }

  @override
  int hash(TarifasRecord? e) => const ListEquality().hash(
      [e?.nombreServicio, e?.descripcion, e?.moneda, e?.precio, e?.unidad]);

  @override
  bool isValidKey(Object? o) => o is TarifasRecord;
}
