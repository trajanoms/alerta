// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LojaStruct extends BaseStruct {
  LojaStruct({
    String? produto,
    String? veiculoModelo,
    String? frequencia,
    int? quantidade,
    String? modelo,
    String? marca,
  })  : _produto = produto,
        _veiculoModelo = veiculoModelo,
        _frequencia = frequencia,
        _quantidade = quantidade,
        _modelo = modelo,
        _marca = marca;

  // "produto" field.
  String? _produto;
  String get produto => _produto ?? '';
  set produto(String? val) => _produto = val;

  bool hasProduto() => _produto != null;

  // "veiculoModelo" field.
  String? _veiculoModelo;
  String get veiculoModelo => _veiculoModelo ?? '';
  set veiculoModelo(String? val) => _veiculoModelo = val;

  bool hasVeiculoModelo() => _veiculoModelo != null;

  // "frequencia" field.
  String? _frequencia;
  String get frequencia => _frequencia ?? '';
  set frequencia(String? val) => _frequencia = val;

  bool hasFrequencia() => _frequencia != null;

  // "quantidade" field.
  int? _quantidade;
  int get quantidade => _quantidade ?? 0;
  set quantidade(int? val) => _quantidade = val;

  void incrementQuantidade(int amount) => quantidade = quantidade + amount;

  bool hasQuantidade() => _quantidade != null;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;

  bool hasModelo() => _modelo != null;

  // "marca" field.
  String? _marca;
  String get marca => _marca ?? '';
  set marca(String? val) => _marca = val;

  bool hasMarca() => _marca != null;

  static LojaStruct fromMap(Map<String, dynamic> data) => LojaStruct(
        produto: data['produto'] as String?,
        veiculoModelo: data['veiculoModelo'] as String?,
        frequencia: data['frequencia'] as String?,
        quantidade: castToType<int>(data['quantidade']),
        modelo: data['modelo'] as String?,
        marca: data['marca'] as String?,
      );

  static LojaStruct? maybeFromMap(dynamic data) =>
      data is Map ? LojaStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'produto': _produto,
        'veiculoModelo': _veiculoModelo,
        'frequencia': _frequencia,
        'quantidade': _quantidade,
        'modelo': _modelo,
        'marca': _marca,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'produto': serializeParam(
          _produto,
          ParamType.String,
        ),
        'veiculoModelo': serializeParam(
          _veiculoModelo,
          ParamType.String,
        ),
        'frequencia': serializeParam(
          _frequencia,
          ParamType.String,
        ),
        'quantidade': serializeParam(
          _quantidade,
          ParamType.int,
        ),
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'marca': serializeParam(
          _marca,
          ParamType.String,
        ),
      }.withoutNulls;

  static LojaStruct fromSerializableMap(Map<String, dynamic> data) =>
      LojaStruct(
        produto: deserializeParam(
          data['produto'],
          ParamType.String,
          false,
        ),
        veiculoModelo: deserializeParam(
          data['veiculoModelo'],
          ParamType.String,
          false,
        ),
        frequencia: deserializeParam(
          data['frequencia'],
          ParamType.String,
          false,
        ),
        quantidade: deserializeParam(
          data['quantidade'],
          ParamType.int,
          false,
        ),
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        marca: deserializeParam(
          data['marca'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'LojaStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LojaStruct &&
        produto == other.produto &&
        veiculoModelo == other.veiculoModelo &&
        frequencia == other.frequencia &&
        quantidade == other.quantidade &&
        modelo == other.modelo &&
        marca == other.marca;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([produto, veiculoModelo, frequencia, quantidade, modelo, marca]);
}

LojaStruct createLojaStruct({
  String? produto,
  String? veiculoModelo,
  String? frequencia,
  int? quantidade,
  String? modelo,
  String? marca,
}) =>
    LojaStruct(
      produto: produto,
      veiculoModelo: veiculoModelo,
      frequencia: frequencia,
      quantidade: quantidade,
      modelo: modelo,
      marca: marca,
    );
