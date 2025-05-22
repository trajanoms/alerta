// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class RotasHorariosStruct extends BaseStruct {
  RotasHorariosStruct({
    String? diaSemana,
    DateTime? horarioPartida,
    DateTime? horarioChegada,
    int? rotaId,
  })  : _diaSemana = diaSemana,
        _horarioPartida = horarioPartida,
        _horarioChegada = horarioChegada,
        _rotaId = rotaId;

  // "dia_semana" field.
  String? _diaSemana;
  String get diaSemana => _diaSemana ?? '';
  set diaSemana(String? val) => _diaSemana = val;

  bool hasDiaSemana() => _diaSemana != null;

  // "horario_partida" field.
  DateTime? _horarioPartida;
  DateTime? get horarioPartida => _horarioPartida;
  set horarioPartida(DateTime? val) => _horarioPartida = val;

  bool hasHorarioPartida() => _horarioPartida != null;

  // "horario_chegada" field.
  DateTime? _horarioChegada;
  DateTime? get horarioChegada => _horarioChegada;
  set horarioChegada(DateTime? val) => _horarioChegada = val;

  bool hasHorarioChegada() => _horarioChegada != null;

  // "rota_id" field.
  int? _rotaId;
  int get rotaId => _rotaId ?? 0;
  set rotaId(int? val) => _rotaId = val;

  void incrementRotaId(int amount) => rotaId = rotaId + amount;

  bool hasRotaId() => _rotaId != null;

  static RotasHorariosStruct fromMap(Map<String, dynamic> data) =>
      RotasHorariosStruct(
        diaSemana: data['dia_semana'] as String?,
        horarioPartida: data['horario_partida'] as DateTime?,
        horarioChegada: data['horario_chegada'] as DateTime?,
        rotaId: castToType<int>(data['rota_id']),
      );

  static RotasHorariosStruct? maybeFromMap(dynamic data) => data is Map
      ? RotasHorariosStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'dia_semana': _diaSemana,
        'horario_partida': _horarioPartida,
        'horario_chegada': _horarioChegada,
        'rota_id': _rotaId,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'dia_semana': serializeParam(
          _diaSemana,
          ParamType.String,
        ),
        'horario_partida': serializeParam(
          _horarioPartida,
          ParamType.DateTime,
        ),
        'horario_chegada': serializeParam(
          _horarioChegada,
          ParamType.DateTime,
        ),
        'rota_id': serializeParam(
          _rotaId,
          ParamType.int,
        ),
      }.withoutNulls;

  static RotasHorariosStruct fromSerializableMap(Map<String, dynamic> data) =>
      RotasHorariosStruct(
        diaSemana: deserializeParam(
          data['dia_semana'],
          ParamType.String,
          false,
        ),
        horarioPartida: deserializeParam(
          data['horario_partida'],
          ParamType.DateTime,
          false,
        ),
        horarioChegada: deserializeParam(
          data['horario_chegada'],
          ParamType.DateTime,
          false,
        ),
        rotaId: deserializeParam(
          data['rota_id'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'RotasHorariosStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is RotasHorariosStruct &&
        diaSemana == other.diaSemana &&
        horarioPartida == other.horarioPartida &&
        horarioChegada == other.horarioChegada &&
        rotaId == other.rotaId;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([diaSemana, horarioPartida, horarioChegada, rotaId]);
}

RotasHorariosStruct createRotasHorariosStruct({
  String? diaSemana,
  DateTime? horarioPartida,
  DateTime? horarioChegada,
  int? rotaId,
}) =>
    RotasHorariosStruct(
      diaSemana: diaSemana,
      horarioPartida: horarioPartida,
      horarioChegada: horarioChegada,
      rotaId: rotaId,
    );
