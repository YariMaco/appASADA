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

import 'dart:io';
import 'dart:typed_data';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:path_provider/path_provider.dart';

Future<FFUploadedFile> createCarta(
  String nombre,
  String cedula,
  String direccion,
  String telefono,
  String correo,
  String motivo,
  String requisitos,
  String tramite,
) async {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          crossAxisAlignment: pw.CrossAxisAlignment.start,
          children: [
            pw.Text(
                'Nombre: ${nombre.isNotEmpty ? nombre : "No especificado"}'),
            pw.Text(
                'Cédula/Pasaporte: ${cedula.isNotEmpty ? cedula : "No especificado"}'),
            pw.Text(
                'Dirección: ${direccion.isNotEmpty ? direccion : "No especificado"}'),
            pw.Text(
                'Teléfono: ${telefono.isNotEmpty ? telefono : "No especificado"}'),
            pw.Text(
                'Correo electrónico: ${correo.isNotEmpty ? correo : "No especificado"}'),
            pw.Text('Fecha generada: ${DateTime.now()}'),
            pw.SizedBox(height: 20),
            pw.Text(
              'A la ASADA de Copalchi. San Dimas y Las Vueltas',
              style: pw.TextStyle(fontWeight: pw.FontWeight.bold),
            ),
            pw.SizedBox(height: 20),
            pw.Text(
              'Yo, ${nombre.isNotEmpty ? nombre : "el solicitante"}, '
              'identificado con cédula/pasaporte número ${cedula.isNotEmpty ? cedula : "No especificado"}, '
              'solicito el trámite de ${tramite} debido a ${motivo.isNotEmpty ? motivo : "motivo no especificado"}.',
            ),
            pw.SizedBox(height: 20),
            pw.Text('Adjunto a esta solicitud lo siguiente:'),
            pw.Text('${requisitos}'),
            pw.SizedBox(height: 20),
            pw.Text(
              'Solicito que cualquier comunicación relacionada con esta solicitud '
              'sea enviada al correo electrónico ${correo.isNotEmpty ? correo : "No especificado"} o bien a la dirección '
              'física arriba indicada.',
            ),
            pw.SizedBox(height: 20),
            pw.Text(
              'Quedo a la espera de su pronta respuesta y le agradezco de antemano su atención.',
            ),
            pw.SizedBox(height: 20),
            pw.Text('Atentamente,'),
            pw.SizedBox(height: 20),
            pw.Text('____________________________'),
            pw.SizedBox(height: 20),
            pw.Text('Firma del solicitante'),
          ],
        );
      },
    ),
  );

  // Obtener los bytes del PDF
  final Uint8List pdfBytes = await pdf.save();
  final uploadedFile = FFUploadedFile(
    bytes: pdfBytes,
    name: 'example.pdf',
  );
  return uploadedFile; // Retornar la ruta temporal del archivo
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
