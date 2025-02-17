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

Future<DocumentReference?> ultimaFac(DocumentReference receptor) async {
  // Reference to the 'encabezado' collection
  CollectionReference encabezado =
      FirebaseFirestore.instance.collection('encabezado');

  // Perform the query to get the most recent invoice for the given receptor
  QuerySnapshot querySnapshot = await encabezado
      .where('receptor', isEqualTo: receptor)
      .orderBy('fecha', descending: true)
      .limit(1)
      .get();

  return querySnapshot.docs[0].reference;
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
