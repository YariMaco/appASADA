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

import 'package:path_provider/path_provider.dart';
import 'dart:io';
import 'package:dio/dio.dart';

Future<String?> descargarPDF(String? url) async {
  if (url == null || url.isEmpty) {
    throw Exception("La URL es nula o está vacía.");
  }

  try {
    url = agregarAltMedia(url) ?? url;

    final dir = await getApplicationDocumentsDirectory();
    final filePath = "${dir.path}/archivo.pdf";

    Dio dio = Dio();
    await dio.download(url, filePath);

    return "Archivo descargado correctamente: $filePath";
  } catch (e) {
    return "Error al descargar el archivo: $e";
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
