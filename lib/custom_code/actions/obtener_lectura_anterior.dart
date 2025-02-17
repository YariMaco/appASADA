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

Future<int> obtenerLecturaAnterior(DocumentReference medidor) async {
  try {
    DateTime hoy = DateTime.now();
    DateTime primerDiaMesActual = DateTime(hoy.year, hoy.month, 1);

    CollectionReference lecturas =
        FirebaseFirestore.instance.collection('lecturas');

    QuerySnapshot querySnapshot = await lecturas
        .where('medidor', isEqualTo: medidor)
        .where('fechaLectura', isLessThan: primerDiaMesActual)
        .orderBy('fechaLectura', descending: true)
        .limit(1)
        .get();

    if (querySnapshot.docs.isNotEmpty) {
      int valorLecturaAnterior =
          querySnapshot.docs.first['lecturaAnterior'] as int;
      return valorLecturaAnterior;
    } else {
      return 0;
    }
  } catch (e) {
    print('Error al obtener la lectura anterior: $e');
    return 0;
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
