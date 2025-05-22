// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> buscaPaginada(int pagina, int qtdPag, String? search) async {
  // Add your function code here!

  final supabase = SupaFlow.client;

  final indiceInicial = (pagina - 1) * qtdPag;
  final indiceFinal = pagina * qtdPag - 1;

  dynamic query = supabase.from("users").select("*");

  query = query.or("nome.ilike.%${search}%");

  final dados = await query.range(indiceInicial, indiceFinal);

  return dados;
}
