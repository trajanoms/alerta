// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListStruct extends BaseStruct {
  ListStruct({
    String? nome,
    int? value,
  })  : _nome = nome,
        _value = value;

  // "Nome" field.
  String? _nome;
  String get nome => _nome ?? '';
  set nome(String? val) => _nome = val;

  bool hasNome() => _nome != null;

  // "Value" field.
  int? _value;
  int get value => _value ?? 0;
  set value(int? val) => _value = val;

  void incrementValue(int amount) => value = value + amount;

  bool hasValue() => _value != null;

  static ListStruct fromMap(Map<String, dynamic> data) => ListStruct(
        nome: data['Nome'] as String?,
        value: castToType<int>(data['Value']),
      );

  static ListStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'Nome': _nome,
        'Value': _value,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'Nome': serializeParam(
          _nome,
          ParamType.String,
        ),
        'Value': serializeParam(
          _value,
          ParamType.int,
        ),
      }.withoutNulls;

  static ListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListStruct(
        nome: deserializeParam(
          data['Nome'],
          ParamType.String,
          false,
        ),
        value: deserializeParam(
          data['Value'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'ListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ListStruct && nome == other.nome && value == other.value;
  }

  @override
  int get hashCode => const ListEquality().hash([nome, value]);
}

ListStruct createListStruct({
  String? nome,
  int? value,
}) =>
    ListStruct(
      nome: nome,
      value: value,
    );
