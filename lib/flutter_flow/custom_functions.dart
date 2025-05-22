import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? colortostring(Color? selectColor) {
  //   color to string

  return selectColor != null
      ? '#${selectColor.value.toRadixString(16).padLeft(8, '0').substring(2)}'
      : null;
}

int diahoje(DateTime data) {
  // gere uma função para pegar o dia da data atual e retornar em formato inteiro
  return data.day;
}

DateTime dateDiaSelecionado(int dia) {
  // gere uma função que retorna em formato current datetime porém que permita que eu altere o dia
  // get current datetime
  DateTime currentDateTime = DateTime.now();

  // create a new datetime with the specified day
  DateTime newDateTime = DateTime(
      currentDateTime.year,
      currentDateTime.month,
      dia,
      currentDateTime.hour,
      currentDateTime.minute,
      currentDateTime.second);

  return newDateTime;
}

DateTime dateAdd30Dias(DateTime data) {
  // gere uma função para que recebe um datetime e acrescenta mais 30 dias
  // add 30 days to the input datetime
  return data.add(Duration(days: 30));
}

DateTime proximoMes(DateTime data) {
  // gere uma função para alterar para o proximo mês, porém sempre mantendo o dia fixo e se o mês não tiver o dia selecione alterar o dia para o ultimo dia do mês
  // get the day of the current month
  int day = data.day;

  // get the next month
  int nextMonth = data.month + 1;

  // check if the next month has the same day
  int lastDayOfMonth = DateTime(data.year, nextMonth + 1, 0).day;
  int newDay = math.min(day, lastDayOfMonth);

  // create a new datetime with the next month and the fixed day
  DateTime newDateTime = DateTime(
      data.year, nextMonth, newDay, data.hour, data.minute, data.second);

  return newDateTime;
}

LatLng createLatLngFromStrings(
  String latStr,
  String lngStr,
) {
  // Converte as strings para double
  final double? latitude = double.tryParse(latStr);
  final double? longitude = double.tryParse(lngStr);

  // Verifica se a conversão foi bem-sucedida
  if (latitude == null || longitude == null) {
    throw FormatException('Coordenadas inválidas: $latStr, $lngStr');
  }

  // Retorna a localização
  return LatLng(latitude, longitude);
}

DateTime subtractMinutes(
  DateTime dateTime,
  int minutes,
) {
  return dateTime.subtract(Duration(minutes: minutes));
}

DateTime convertToTimeOfDay(String timeStr) {
  final parts = timeStr.split(':');
  final hour = int.tryParse(parts[0]) ?? 0;
  final minute = int.tryParse(parts[1]) ?? 0;

  final now = DateTime.now();
  return DateTime(now.year, now.month, now.day, hour, minute);
}

List<dynamic>? gerarParcelas(
  String? valorTotal,
  DateTime? dataBase,
  String? qtdParcelas,
  String? dataVencimentoBase,
) {
  if (valorTotal == null || qtdParcelas == null || dataVencimentoBase == null) {
    return [];
  }

  final valorSanitizado = valorTotal
      .replaceAll('R\$', '')
      .replaceAll('.', '')
      .replaceAll(',', '.')
      .trim();
  final valor = double.tryParse(valorSanitizado);
  final parcelas = int.tryParse(qtdParcelas.trim());
  final dataBase = DateFormat('dd/MM/yyyy').parse(dataVencimentoBase.trim());

  if (valor == null || parcelas == null) {
    return [];
  }

  final double valorParcela =
      double.parse((valor / parcelas).toStringAsFixed(2));
  final List<Map<String, dynamic>> resultado = [];

  for (var i = 0; i < parcelas; i++) {
    final vencimento =
        DateTime(dataBase.year, dataBase.month + i, dataBase.day);
    resultado.add({
      'parcela': (i + 1).toString(),
      'vencimento': DateFormat('dd/MM/yyyy').format(vencimento),
      'valor': valorParcela,
    });
  }

  return resultado;
}

List<DateTime> gerardatas(
  DateTime startDate,
  int numberOfMonths,
) {
  List<DateTime> datesList = [];

  for (int i = 0; i < numberOfMonths; i++) {
    // Calcula a nova data adicionando os meses
    DateTime newDate =
        DateTime(startDate.year, startDate.month + i, startDate.day);

    // Se o mês ultrapassa 12, ajusta o ano e o mês corretamente
    int year = startDate.year + ((startDate.month + i - 1) ~/ 12);
    int month = (startDate.month + i - 1) % 12 + 1;

    // Cria a nova data com o ano e mês ajustados
    newDate = DateTime(year, month, startDate.day);
    datesList.add(newDate);
  }

  return datesList;
}

int calcDeslocamento(
  int pageNum,
  int limite,
) {
  return (pageNum - 1) * limite;
}
