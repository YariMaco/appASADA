// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> lecturasCargadas() async {
  final firestore = FirebaseFirestore.instance;

  // Define las fechas para filtrar
  final DateTime ahora = DateTime.now();
  final DateTime primerDiaMes = DateTime(ahora.year, ahora.month, 1);
  final DateTime ultimoDiaMes = DateTime(ahora.year, ahora.month + 1, 0);

  // Realiza una consulta filtrada por las fechas
  final querySnapshot = await firestore
      .collection('lecturas')
      .where('fechaLectura', isGreaterThanOrEqualTo: primerDiaMes)
      .where('fechaLectura', isLessThanOrEqualTo: ultimoDiaMes)
      .get();

  // Itera sobre los documentos filtrados y actualiza el campo deseado
  for (final doc in querySnapshot.docs) {
    await firestore.collection('lecturas').doc(doc.id).update({'lista': true});
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
