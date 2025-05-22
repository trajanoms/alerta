// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class CountPermiStruct extends BaseStruct {
  CountPermiStruct({
    bool? podeAcessar,
  }) : _podeAcessar = podeAcessar;

  // "pode_acessar" field.
  bool? _podeAcessar;
  bool get podeAcessar => _podeAcessar ?? false;
  set podeAcessar(bool? val) => _podeAcessar = val;

  bool hasPodeAcessar() => _podeAcessar != null;

  static CountPermiStruct fromMap(Map<String, dynamic> data) =>
      CountPermiStruct(
        podeAcessar: data['pode_acessar'] as bool?,
      );

  static CountPermiStruct? maybeFromMap(dynamic data) => data is Map
      ? CountPermiStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'pode_acessar': _podeAcessar,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'pode_acessar': serializeParam(
          _podeAcessar,
          ParamType.bool,
        ),
      }.withoutNulls;

  static CountPermiStruct fromSerializableMap(Map<String, dynamic> data) =>
      CountPermiStruct(
        podeAcessar: deserializeParam(
          data['pode_acessar'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'CountPermiStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is CountPermiStruct && podeAcessar == other.podeAcessar;
  }

  @override
  int get hashCode => const ListEquality().hash([podeAcessar]);
}

CountPermiStruct createCountPermiStruct({
  bool? podeAcessar,
}) =>
    CountPermiStruct(
      podeAcessar: podeAcessar,
    );
