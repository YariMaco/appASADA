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

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> createClient(
    String name,
    String email,
    String password,
    String phoneNumber,
    String nationality,
    String identificacion,
    bool isOwner,
    String appName) async {
  // Inicializar Firebase App
  FirebaseApp app = await Firebase.initializeApp(
      name: appName, options: Firebase.app().options);

  // Crear usuario en Firebase Authentication
  UserCredential userCredential = await FirebaseAuth.instanceFor(app: app)
      .createUserWithEmailAndPassword(email: email, password: password);

  String? uid = userCredential.user?.uid;

  // Referencia a la colección de Firestore
  final CollectionReference<Map<String, dynamic>> userRef =
      FirebaseFirestore.instance.collection('users');

  // Guardar datos en Firestore con valores predeterminados
  await userRef.doc(uid).set({
    'uid': uid,
    'display_name': name,
    'photo_url': "",
    'phone_number': phoneNumber,
    'email': email,
    'nationality': nationality,
    'identificacion': identificacion,
    'is_meter_owner': isOwner,
    'is_Individual': true,
    'role': "usuario",
    'created_time': FieldValue.serverTimestamp(),
    'registered_name': "N/A",
  });
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
