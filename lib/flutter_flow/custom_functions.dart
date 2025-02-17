import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/backend/schema/structs/index.dart';
import '/backend/schema/enums/enums.dart';
import '/auth/firebase_auth/auth_util.dart';

bool? validarConfirmacion(String? textoIngresado) {
  if (textoIngresado == null) {
    return null;
  }
  //String textoNormalizado = textoIngresado.trim().toUpperCase();
  final textoNormalizado = textoIngresado.trim().toUpperCase();

  if (textoNormalizado == "CONFIRMAR") {
    return true;
  }
  return null;
}

bool rangoTiempoLectura(DateTime hoy) {
  return hoy.day <= 25;
}

String? proximaLectura(DateTime hoy) {
  DateTime primerDiaMes = DateTime(hoy.year, hoy.month + 1, 1);
  DateTime diaquinceMes = DateTime(hoy.year, hoy.month + 1, 15);
  String formatoDia(int dia) => dia.toString().padLeft(2, '0');
  String formatoMes(int mes) => mes.toString().padLeft(2, '0');
  String formatoAnio(int anio) => anio.toString().substring(2);

  String primerDia =
      "${formatoDia(primerDiaMes.day)}/${formatoMes(primerDiaMes.month)}/${formatoAnio(primerDiaMes.year)}";
  String ultimoDia =
      "${formatoDia(diaquinceMes.day)}/${formatoMes(diaquinceMes.month)}/${formatoAnio(diaquinceMes.year)}";

  return "La próxima lectura será del $primerDia al $ultimoDia";
}

int calculoConsumo(
  String lecturaActual,
  String lecturaAnterior,
) {
  int lecturaActualConvertida = int.tryParse(lecturaActual) ?? 0;
  int lecturaAnteriorConvertida = int.tryParse(lecturaAnterior) ?? 0;

  int total = lecturaActualConvertida - lecturaAnteriorConvertida;
  return total;
}

DateTime? primeraFecha() {
  DateTime hoy = DateTime.now();
  return DateTime(hoy.year, hoy.month, 1);
}

DateTime? ultimafecha() {
  DateTime hoy = DateTime.now();
  return DateTime(hoy.year, hoy.month + 1, 1).subtract(Duration(days: 1));
}

String? agregarAltMedia(String? url) {
  if (url == null || url.isEmpty) {
    return "";
  }
  if (url.contains("?")) {
    return "$url&alt=media";
  } else {
    return "$url?alt=media";
  }
}

bool disponibilidadFactura() {
  DateTime hoy = DateTime.now();
  return hoy.day >= 14 && hoy.day <= 17;
}

bool cargarLecturas(
  int cantidadLeturas,
  int cantidadMedidores,
) {
  double division = cantidadLeturas / cantidadMedidores;
  return division == 1;
}

String? convierteCoordenadas(String? latlong) {
  // remove LatLng(lat: , lng: , ) from the word
  if (latlong == null) {
    return null;
  }
  final regex = RegExp(r'LatLng\(lat: (.*), lng: (.*)\)');
  final match = regex.firstMatch(latlong);
  if (match != null && match.groupCount == 2) {
    final lat = double.tryParse(match.group(1)!);
    final lng = double.tryParse(match.group(2)!);
    if (lat != null && lng != null) {
      return '$lat,$lng';
    }
  }
  return null;
}

DateTime inicioDeAno() {
  DateTime hoy = DateTime.now();
  return DateTime(hoy.year, 1, 1);
}

String? formatearFecha(DateTime fecha) {
  String ano = fecha.year.toString();
  String mes = fecha.month.toString().padLeft(2, '0');

  return '$ano$mes';
}

DateTime venceFactura() {
  DateTime ahora = DateTime.now();

  return DateTime(ahora.year, ahora.month + 1, 13);
}
