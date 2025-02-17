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

Future<bool> esDueno(
  String correo,
  String identificacion,
) async {
  CollectionReference usuariosCollection =
      FirebaseFirestore.instance.collection('abonados');

  QuerySnapshot querySnapshot = await usuariosCollection
      .where('email', isEqualTo: correo)
      .where('cedula', isEqualTo: identificacion)
      .get();

  if (querySnapshot.docs.isNotEmpty) {
    return true;
  } else {
    return false;
  }
}
// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
