import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Supabase Group Code

class SupabaseGroup {
  static String getBaseUrl() => 'https://tuwquuqssuuihgpkyxmy.supabase.co/';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
    'apikey':
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
    'Authorization':
        'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
  };
  static FuncaoDoRastreadorCall funcaoDoRastreadorCall =
      FuncaoDoRastreadorCall();
}

class FuncaoDoRastreadorCall {
  Future<ApiCallResponse> call({
    String? devId = '',
    String? imei = '',
  }) async {
    final baseUrl = SupabaseGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "_dev_id": "${escapeStringForJson(devId)}",
  "_imei": "${escapeStringForJson(imei)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Funcao do rastreador',
      apiUrl: '${baseUrl}rest/v1/rpc/get_latest_tracker_record',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? imeirecordimei(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imei_record.imei''',
      ));
  String? imeirecordrow(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imei_record.row''',
      ));
  String? imeirecordsatellites(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.satellites''',
      ));
  String? imeirecordlongitude(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.longitude''',
      ));
  String? imeirecorddatetime(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.date_time''',
      ));
  String? imeirecordcreatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.created_at''',
      ));
  dynamic imeirecord(dynamic response) => getJsonField(
        response,
        r'''$.imei_record''',
      );
  String? devrecordmsgtype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.msg_type''',
      ));
  String? devrecordhmeter(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.h_meter''',
      ));
  String? devrecordmode(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.mode''',
      ));
  String? devrecordpwrvolt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.pwr_volt''',
      ));
  String? devrecordio(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.i_o''',
      ));
  String? devrecorddist(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.dist''',
      ));
  String? devrecordfix(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.fix''',
      ));
  String? devrecordsatt(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.satt''',
      ));
  String? devrecordcrs(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.crs''',
      ));
  String? devrecordspd(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.spd''',
      ));
  String? devrecordlon(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.lon''',
      ));
  String? devrecordlat(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.lat''',
      ));
  String? imeirecordhdr(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imei_record.hdr''',
      ));
  String? imeirecorddirection(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.direction''',
      ));
  String? imeirecordspeed(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imei_record.speed''',
      ));
  String? imeirecordlatitude(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.imei_record.latitude''',
      ));
  String? imeirecordtype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.imei_record.type''',
      ));
  int? imeirecordid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.imei_record.id''',
      ));
  String? devrecordrow(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.row''',
      ));
  String? devrecordbackvolt(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dev_record.back_volt''',
      ));
  String? devrecordmsgnum(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.msg_num''',
      ));
  String? devrecordcell(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.cell''',
      ));
  String? devrecordcreatedat(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.dev_record.created_at''',
      ));
  int? devrecordid(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.dev_record.id''',
      ));
  dynamic devrecord(dynamic response) => getJsonField(
        response,
        r'''$.dev_record''',
      );
  String? devrecordhdr(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.hdr''',
      ));
  String? devrecordswver(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.sw_ver''',
      ));
  String? devrecorddate(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.date''',
      ));
  String? devrecordmodel(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.model''',
      ));
  String? devrecorddevid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.dev_id''',
      ));
  String? devrecordtime(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.dev_record.time''',
      ));
}

/// End Supabase Group Code

class RecuperacaoDeSenhaCall {
  static Future<ApiCallResponse> call({
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Recuperacao de senha',
      apiUrl: 'https://tuwquuqssuuihgpkyxmy.supabase.co/auth/v1/recover',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class AtualizarSenhaCall {
  static Future<ApiCallResponse> call({
    String? novasenha = '',
    String? userToken = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(novasenha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Atualizar senha',
      apiUrl: 'https://tuwquuqssuuihgpkyxmy.supabase.co/auth/v1/user',
      callType: ApiCallType.PUT,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
        'Content-Type': 'application/json',
        'Authorization': 'Bearer ${userToken}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class CriarUsuarioCall {
  static Future<ApiCallResponse> call({
    String? email = '',
    String? senha = '123456',
  }) async {
    final ffApiRequestBody = '''
{
  "email": "${escapeStringForJson(email)}",
  "password": "${escapeStringForJson(senha)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Criar Usuario',
      apiUrl: 'https://tuwquuqssuuihgpkyxmy.supabase.co/auth/v1/signup',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTczNjUzMjY1NiwiZXhwIjoyMDUyMTA4NjU2fQ.lCrC6itGTrw8-wXEdD4MIaADtjP9xRQR2wynXIPcOD8',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? uid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.user.id''',
      ));
}

class BuscaCEPCall {
  static Future<ApiCallResponse> call({
    String? cep = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca CEP',
      apiUrl: 'https://viacep.com.br/ws/${cep}/json/',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? logradouro(dynamic response) =>
      castToType<String>(getJsonField(
        response,
        r'''$.logradouro''',
      ));
  static String? bairro(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.bairro''',
      ));
  static String? cidade(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.localidade''',
      ));
  static String? uf(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.uf''',
      ));
  static String? estado(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.estado''',
      ));
}

class BuscaUsuariosCall {
  static Future<ApiCallResponse> call({
    String? filtro = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Usuarios',
      apiUrl:
          'https://ejhzirzdyxpcphlzlndt.supabase.co/rest/v1/users?or=(nome.ilike.*${filtro}*,documento.ilike.*${filtro}*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaUsuariosAtivosCall {
  static Future<ApiCallResponse> call({
    String? filtro = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Usuarios Ativos',
      apiUrl:
          'https://ejhzirzdyxpcphlzlndt.supabase.co/rest/v1/users?ativo=eq.true&or=(nome.ilike.*${filtro}*,documento.ilike.*${filtro}*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaUsuariosInativosCall {
  static Future<ApiCallResponse> call({
    String? filtro = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Usuarios Inativos',
      apiUrl:
          'https://ejhzirzdyxpcphlzlndt.supabase.co/rest/v1/users?ativo=eq.false&or=(nome.ilike.*${filtro}*,documento.ilike.*${filtro}*)&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Range': '0-9',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class BuscaVeiculosFiltrosCall {
  static Future<ApiCallResponse> call({
    String? endDate = '',
    String? filtroClienteUser = '',
    String? filtroOperadora = '',
    String? filtroPlaca = '',
    String? filtroStatusRastreador = '',
    String? filtroTipoVeiculo = '',
    int? limitCount = 20,
    int? offsetCount = 0,
    String? startDate = '',
  }) async {
    final ffApiRequestBody = '''
{
  "end_date": "${escapeStringForJson(endDate)}",
  "filtro_cliente_user": "${escapeStringForJson(filtroClienteUser)}",
  "filtro_operadora": "${escapeStringForJson(filtroOperadora)}",
  "filtro_placa": "${escapeStringForJson(filtroPlaca)}",
  "filtro_status_rastreador": "${escapeStringForJson(filtroStatusRastreador)}",
  "filtro_tipo_veiculo": "${escapeStringForJson(filtroTipoVeiculo)}",
  "limit_count": ${limitCount},
  "offset_count": ${offsetCount},
  "start_date": "${escapeStringForJson(startDate)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'Busca Veiculos Filtros',
      apiUrl:
          'https://ejhzirzdyxpcphlzlndt.supabase.co/rest/v1/rpc/get_veiculos',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImVqaHppcnpkeXhwY3BobHpsbmR0Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzE1MTI3MjksImV4cCI6MjA0NzA4ODcyOX0.QNPIDAF_JpTdKv7CX9ptLhgaY6iHQCdOeX_N0qOXbpk',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class POSTCriarClienteCall {
  static Future<ApiCallResponse> call({
    String? apiKey =
        '\$aact_hmlg_000MzkwODA2MWY2OGM3MWRlMDU2NWM3MzJlNzZmNGZhZGY6OjdmOTc5NGVkLTU1ZTItNDE1ZS04MjgyLTc2ZWE4ZTM1ZjQ0MDo6JGFhY2hfYjNmM2VhYzctNjBlYi00OWViLWJiODMtYzA1YmY0YWM3NzZi',
    String? nome = '',
    String? cpfCnpj = '',
    String? email = '',
  }) async {
    final ffApiRequestBody = '''
{
  "name": "${escapeStringForJson(nome)}",
  "cpfCnpj": "${escapeStringForJson(cpfCnpj)}",
  "email": "${escapeStringForJson(email)}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'POST criar cliente',
      apiUrl: 'https://api-sandbox.asaas.com/v3/customers',
      callType: ApiCallType.POST,
      headers: {
        'accept': 'application/json',
        'access_token': '${apiKey}',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? asaasID(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.id''',
      ));
}

class GetEnderecoGoogleCall {
  static Future<ApiCallResponse> call({
    String? latitude = '',
    String? longitude = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'GetEnderecoGoogle',
      apiUrl:
          'https://maps.googleapis.com/maps/api/geocode/json?latlng=${latitude},${longitude}&key=AIzaSyBTThtzoMLTVoWpbN6aMCYL6ecRM0Z8lag',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static List<String>? endereco(dynamic response) => (getJsonField(
        response,
        r'''$.results[:].formatted_address''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class PaginacaoLojaCall {
  static Future<ApiCallResponse> call({
    String? limite = '',
    String? offset = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'paginacaoLoja',
      apiUrl:
          'https://tuwquuqssuuihgpkyxmy.supabase.co/rest/v1/view_loja_rastreadores_com_imagens?select=*&limit=${limite}&offset=${offset}',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6InR1d3F1dXFzc3V1aWhncGt5eG15Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MzY1MzI2NTYsImV4cCI6MjA1MjEwODY1Nn0.xEoBjMxp-dkt200i5fici5_YIAkEXf1EikfvwHf7xbA',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  static String? id(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$[:].id''',
      ));
  static List<String>? nomeProduto(dynamic response) => (getJsonField(
        response,
        r'''$[:].titulo''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}

String? escapeStringForJson(String? input) {
  if (input == null) {
    return null;
  }
  return input
      .replaceAll('\\', '\\\\')
      .replaceAll('"', '\\"')
      .replaceAll('\n', '\\n')
      .replaceAll('\t', '\\t');
}
