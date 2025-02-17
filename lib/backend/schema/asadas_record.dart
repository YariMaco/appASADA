import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class AsadasRecord extends FirestoreRecord {
  AsadasRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "nombre" field.
  String? _nombre;
  String get nombre => _nombre ?? '';
  bool hasNombre() => _nombre != null;

  // "direccion" field.
  String? _direccion;
  String get direccion => _direccion ?? '';
  bool hasDireccion() => _direccion != null;

  // "correo" field.
  String? _correo;
  String get correo => _correo ?? '';
  bool hasCorreo() => _correo != null;

  // "telefono" field.
  String? _telefono;
  String get telefono => _telefono ?? '';
  bool hasTelefono() => _telefono != null;

  // "ideo" field.
  String? _ideo;
  String get ideo => _ideo ?? '';
  bool hasIdeo() => _ideo != null;

  // "cedulaJuridica" field.
  String? _cedulaJuridica;
  String get cedulaJuridica => _cedulaJuridica ?? '';
  bool hasCedulaJuridica() => _cedulaJuridica != null;

  // "provincia" field.
  String? _provincia;
  String get provincia => _provincia ?? '';
  bool hasProvincia() => _provincia != null;

  // "canton" field.
  String? _canton;
  String get canton => _canton ?? '';
  bool hasCanton() => _canton != null;

  // "fechaActualizacionFinanciero" field.
  DateTime? _fechaActualizacionFinanciero;
  DateTime? get fechaActualizacionFinanciero => _fechaActualizacionFinanciero;
  bool hasFechaActualizacionFinanciero() =>
      _fechaActualizacionFinanciero != null;

  // "docEstadoFinanciero" field.
  String? _docEstadoFinanciero;
  String get docEstadoFinanciero => _docEstadoFinanciero ?? '';
  bool hasDocEstadoFinanciero() => _docEstadoFinanciero != null;

  // "distrito" field.
  String? _distrito;
  String get distrito => _distrito ?? '';
  bool hasDistrito() => _distrito != null;

  // "imagen" field.
  String? _imagen;
  String get imagen => _imagen ?? '';
  bool hasImagen() => _imagen != null;

  // "urlPDF" field.
  String? _urlPDF;
  String get urlPDF => _urlPDF ?? '';
  bool hasUrlPDF() => _urlPDF != null;

  // "horarioLV" field.
  String? _horarioLV;
  String get horarioLV => _horarioLV ?? '';
  bool hasHorarioLV() => _horarioLV != null;

  // "horarioSabado" field.
  String? _horarioSabado;
  String get horarioSabado => _horarioSabado ?? '';
  bool hasHorarioSabado() => _horarioSabado != null;

  // "horarioDomingo" field.
  String? _horarioDomingo;
  String get horarioDomingo => _horarioDomingo ?? '';
  bool hasHorarioDomingo() => _horarioDomingo != null;

  void _initializeFields() {
    _nombre = snapshotData['nombre'] as String?;
    _direccion = snapshotData['direccion'] as String?;
    _correo = snapshotData['correo'] as String?;
    _telefono = snapshotData['telefono'] as String?;
    _ideo = snapshotData['ideo'] as String?;
    _cedulaJuridica = snapshotData['cedulaJuridica'] as String?;
    _provincia = snapshotData['provincia'] as String?;
    _canton = snapshotData['canton'] as String?;
    _fechaActualizacionFinanciero =
        snapshotData['fechaActualizacionFinanciero'] as DateTime?;
    _docEstadoFinanciero = snapshotData['docEstadoFinanciero'] as String?;
    _distrito = snapshotData['distrito'] as String?;
    _imagen = snapshotData['imagen'] as String?;
    _urlPDF = snapshotData['urlPDF'] as String?;
    _horarioLV = snapshotData['horarioLV'] as String?;
    _horarioSabado = snapshotData['horarioSabado'] as String?;
    _horarioDomingo = snapshotData['horarioDomingo'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('asadas');

  static Stream<AsadasRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => AsadasRecord.fromSnapshot(s));

  static Future<AsadasRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => AsadasRecord.fromSnapshot(s));

  static AsadasRecord fromSnapshot(DocumentSnapshot snapshot) => AsadasRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AsadasRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AsadasRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AsadasRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AsadasRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAsadasRecordData({
  String? nombre,
  String? direccion,
  String? correo,
  String? telefono,
  String? ideo,
  String? cedulaJuridica,
  String? provincia,
  String? canton,
  DateTime? fechaActualizacionFinanciero,
  String? docEstadoFinanciero,
  String? distrito,
  String? imagen,
  String? urlPDF,
  String? horarioLV,
  String? horarioSabado,
  String? horarioDomingo,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'nombre': nombre,
      'direccion': direccion,
      'correo': correo,
      'telefono': telefono,
      'ideo': ideo,
      'cedulaJuridica': cedulaJuridica,
      'provincia': provincia,
      'canton': canton,
      'fechaActualizacionFinanciero': fechaActualizacionFinanciero,
      'docEstadoFinanciero': docEstadoFinanciero,
      'distrito': distrito,
      'imagen': imagen,
      'urlPDF': urlPDF,
      'horarioLV': horarioLV,
      'horarioSabado': horarioSabado,
      'horarioDomingo': horarioDomingo,
    }.withoutNulls,
  );

  return firestoreData;
}

class AsadasRecordDocumentEquality implements Equality<AsadasRecord> {
  const AsadasRecordDocumentEquality();

  @override
  bool equals(AsadasRecord? e1, AsadasRecord? e2) {
    return e1?.nombre == e2?.nombre &&
        e1?.direccion == e2?.direccion &&
        e1?.correo == e2?.correo &&
        e1?.telefono == e2?.telefono &&
        e1?.ideo == e2?.ideo &&
        e1?.cedulaJuridica == e2?.cedulaJuridica &&
        e1?.provincia == e2?.provincia &&
        e1?.canton == e2?.canton &&
        e1?.fechaActualizacionFinanciero == e2?.fechaActualizacionFinanciero &&
        e1?.docEstadoFinanciero == e2?.docEstadoFinanciero &&
        e1?.distrito == e2?.distrito &&
        e1?.imagen == e2?.imagen &&
        e1?.urlPDF == e2?.urlPDF &&
        e1?.horarioLV == e2?.horarioLV &&
        e1?.horarioSabado == e2?.horarioSabado &&
        e1?.horarioDomingo == e2?.horarioDomingo;
  }

  @override
  int hash(AsadasRecord? e) => const ListEquality().hash([
        e?.nombre,
        e?.direccion,
        e?.correo,
        e?.telefono,
        e?.ideo,
        e?.cedulaJuridica,
        e?.provincia,
        e?.canton,
        e?.fechaActualizacionFinanciero,
        e?.docEstadoFinanciero,
        e?.distrito,
        e?.imagen,
        e?.urlPDF,
        e?.horarioLV,
        e?.horarioSabado,
        e?.horarioDomingo
      ]);

  @override
  bool isValidKey(Object? o) => o is AsadasRecord;
}
