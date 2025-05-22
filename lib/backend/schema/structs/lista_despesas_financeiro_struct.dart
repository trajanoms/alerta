// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListaDespesasFinanceiroStruct extends BaseStruct {
  ListaDespesasFinanceiroStruct({
    String? parcela,
    String? vencimento,
    String? valor,
  })  : _parcela = parcela,
        _vencimento = vencimento,
        _valor = valor;

  // "parcela" field.
  String? _parcela;
  String get parcela => _parcela ?? '';
  set parcela(String? val) => _parcela = val;

  bool hasParcela() => _parcela != null;

  // "vencimento" field.
  String? _vencimento;
  String get vencimento => _vencimento ?? '';
  set vencimento(String? val) => _vencimento = val;

  bool hasVencimento() => _vencimento != null;

  // "valor" field.
  String? _valor;
  String get valor => _valor ?? '';
  set valor(String? val) => _valor = val;

  bool hasValor() => _valor != null;

  static ListaDespesasFinanceiroStruct fromMap(Map<String, dynamic> data) =>
      ListaDespesasFinanceiroStruct(
        parcela: data['parcela'] as String?,
        vencimento: data['vencimento'] as String?,
        valor: data['valor'] as String?,
      );

  static ListaDespesasFinanceiroStruct? maybeFromMap(dynamic data) =>
      data is Map
          ? ListaDespesasFinanceiroStruct.fromMap(data.cast<String, dynamic>())
          : null;

  Map<String, dynamic> toMap() => {
        'parcela': _parcela,
        'vencimento': _vencimento,
        'valor': _valor,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'parcela': serializeParam(
          _parcela,
          ParamType.String,
        ),
        'vencimento': serializeParam(
          _vencimento,
          ParamType.String,
        ),
        'valor': serializeParam(
          _valor,
          ParamType.String,
        ),
      }.withoutNulls;

  static ListaDespesasFinanceiroStruct fromSerializableMap(
          Map<String, dynamic> data) =>
      ListaDespesasFinanceiroStruct(
        parcela: deserializeParam(
          data['parcela'],
          ParamType.String,
          false,
        ),
        vencimento: deserializeParam(
          data['vencimento'],
          ParamType.String,
          false,
        ),
        valor: deserializeParam(
          data['valor'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'ListaDespesasFinanceiroStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListaDespesasFinanceiroStruct &&
        parcela == other.parcela &&
        vencimento == other.vencimento &&
        valor == other.valor;
  }

  @override
  int get hashCode => const ListEquality().hash([parcela, vencimento, valor]);
}

ListaDespesasFinanceiroStruct createListaDespesasFinanceiroStruct({
  String? parcela,
  String? vencimento,
  String? valor,
}) =>
    ListaDespesasFinanceiroStruct(
      parcela: parcela,
      vencimento: vencimento,
      valor: valor,
    );
