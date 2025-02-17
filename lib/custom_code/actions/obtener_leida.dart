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

Future<DocumentReference> obtenerLeida(DocumentReference medidor) async {
  DateTime hoy = DateTime.now();
  DateTime primerDiaMes = DateTime(hoy.year, hoy.month, 1);
  DateTime ultimoDiaMes =
      DateTime(hoy.year, hoy.month + 1, 1).subtract(Duration(days: 1));
  CollectionReference lecturas =
      FirebaseFirestore.instance.collection('lecturas');

  QuerySnapshot querySnapshot = await lecturas
      .where('medidor', isEqualTo: medidor)
      .where('fechaLectura', isGreaterThanOrEqualTo: primerDiaMes)
      .where('fechaLectura', isLessThanOrEqualTo: ultimoDiaMes)
      .get();

  return querySnapshot.docs[0].reference;
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
