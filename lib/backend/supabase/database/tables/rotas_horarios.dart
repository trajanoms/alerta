import '../database.dart';

class RotasHorariosTable extends SupabaseTable<RotasHorariosRow> {
  @override
  String get tableName => 'rotas_horarios';

  @override
  RotasHorariosRow createRow(Map<String, dynamic> data) =>
      RotasHorariosRow(data);
}

class RotasHorariosRow extends SupabaseDataRow {
  RotasHorariosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RotasHorariosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get rotaId => getField<String>('rota_id');
  set rotaId(String? value) => setField<String>('rota_id', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  PostgresTime? get horarioPartida => getField<PostgresTime>('horario_partida');
  set horarioPartida(PostgresTime? value) =>
      setField<PostgresTime>('horario_partida', value);

  PostgresTime? get horarioChegada => getField<PostgresTime>('horario_chegada');
  set horarioChegada(PostgresTime? value) =>
      setField<PostgresTime>('horario_chegada', value);
}
