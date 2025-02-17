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
import 'dart:math';

Future<void> generarFacturas() async {
  final firestore = FirebaseFirestore.instance;
  final DateTime ahora = DateTime.now();
  final DateTime inicioMes = DateTime(ahora.year, ahora.month, 1);
  final DateTime finMes = DateTime(ahora.year, ahora.month + 1, 0);
  final DateTime vence = DateTime(ahora.year, ahora.month + 1, 13);

  // 1. Filtrar lecturas del mes actual
  final lecturasQuery = await firestore
      .collection('lecturas')
      .where('fechaLectura', isGreaterThanOrEqualTo: inicioMes)
      .where('fechaLectura', isLessThanOrEqualTo: finMes)
      .get();

  final lecturas = lecturasQuery.docs;
  final asadasQuery =
      await FirebaseFirestore.instance.collection('asadas').get();

  final asadaDoc = asadasQuery.docs.first;
  // 2. Procesar cada lectura
  for (final lectura in lecturas) {
    final data = lectura.data();
    final consumo = data['consumo'] ?? 0;
    //Si el consumo fue 0 igual se le hace factura por el moto base
    // Obtener información del medidor
    final medidorRef = data['medidor'] as DocumentReference;
    final medidorSnapshot = await medidorRef.get();
    final medidorData = medidorSnapshot.data() as Map<String, dynamic>;

    // Obtener cliente (abonado) y tarifa
    final clienteRef = medidorData['abonado'] as DocumentReference;
    final tarifaRef = medidorData['tarifa'] as DocumentReference;
    final tarifaBaseRef = medidorData['montoBase'] as DocumentReference;

    final clienteSnapshot = await clienteRef.get();
    final tarifaSnapshot = await tarifaRef.get();
    final tarifaBaseSnapshot = await tarifaBaseRef.get();

    final cliente = clienteSnapshot.data() as Map<String, dynamic>;
    final tarifa = tarifaSnapshot.data() as Map<String, dynamic>;
    final precioPorMetro = tarifa['precio'] ?? 0;
    final tarifaBase = tarifaBaseSnapshot.data() as Map<String, dynamic>;
    final precioBase = tarifaBase['precio'] ?? 0;

    // 3. Calcular montos
    final subtotal = consumo * precioPorMetro + precioBase;
    final iva = (subtotal * 0.13).round(); // 13% de IVA
    final total = subtotal + iva;
    final consecutivo = 1 + lecturas.indexOf(lectura);
    // 4. Crear encabezado
    final encabezadoRef = await firestore.collection('encabezado').add({
      'consecutivo': consecutivo,
      'fecha': ahora,
      'receptor': clienteRef,
      'total': total,
      'emisor': asadaDoc.reference,
      'pagada': false,
      'vence': vence,
    });

    // 5. Crear detalle
    await firestore.collection('detalles').add({
      'servicio': 'Consumo de agua',
      'cantidad': 1,
      'tarifa': precioPorMetro,
      'subtotal': subtotal,
      'consumo': consumo,
      'iva': iva,
      'encabezado': encabezadoRef,
      'montoBase': precioBase,
    });
  }
}

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!
