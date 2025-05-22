// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class VeiculosStruct extends BaseStruct {
  VeiculosStruct({
    String? modelo,
    String? placa,
    String? tipo,
    int? id,
  })  : _modelo = modelo,
        _placa = placa,
        _tipo = tipo,
        _id = id;

  // "modelo" field.
  String? _modelo;
  String get modelo => _modelo ?? '';
  set modelo(String? val) => _modelo = val;

  bool hasModelo() => _modelo != null;

  // "placa" field.
  String? _placa;
  String get placa => _placa ?? '';
  set placa(String? val) => _placa = val;

  bool hasPlaca() => _placa != null;

  // "tipo" field.
  String? _tipo;
  String get tipo => _tipo ?? '';
  set tipo(String? val) => _tipo = val;

  bool hasTipo() => _tipo != null;

  // "id" field.
  int? _id;
  int get id => _id ?? 0;
  set id(int? val) => _id = val;

  void incrementId(int amount) => id = id + amount;

  bool hasId() => _id != null;

  static VeiculosStruct fromMap(Map<String, dynamic> data) => VeiculosStruct(
        modelo: data['modelo'] as String?,
        placa: data['placa'] as String?,
        tipo: data['tipo'] as String?,
        id: castToType<int>(data['id']),
      );

  static VeiculosStruct? maybeFromMap(dynamic data) =>
      data is Map ? VeiculosStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'modelo': _modelo,
        'placa': _placa,
        'tipo': _tipo,
        'id': _id,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'modelo': serializeParam(
          _modelo,
          ParamType.String,
        ),
        'placa': serializeParam(
          _placa,
          ParamType.String,
        ),
        'tipo': serializeParam(
          _tipo,
          ParamType.String,
        ),
        'id': serializeParam(
          _id,
          ParamType.int,
        ),
      }.withoutNulls;

  static VeiculosStruct fromSerializableMap(Map<String, dynamic> data) =>
      VeiculosStruct(
        modelo: deserializeParam(
          data['modelo'],
          ParamType.String,
          false,
        ),
        placa: deserializeParam(
          data['placa'],
          ParamType.String,
          false,
        ),
        tipo: deserializeParam(
          data['tipo'],
          ParamType.String,
          false,
        ),
        id: deserializeParam(
          data['id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'VeiculosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is VeiculosStruct &&
        modelo == other.modelo &&
        placa == other.placa &&
        tipo == other.tipo &&
        id == other.id;
  }

  @override
  int get hashCode => const ListEquality().hash([modelo, placa, tipo, id]);
}

VeiculosStruct createVeiculosStruct({
  String? modelo,
  String? placa,
  String? tipo,
  int? id,
}) =>
    VeiculosStruct(
      modelo: modelo,
      placa: placa,
      tipo: tipo,
      id: id,
    );
