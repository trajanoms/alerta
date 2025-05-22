import '../database.dart';

class PacotesRastreadorJ16Table extends SupabaseTable<PacotesRastreadorJ16Row> {
  @override
  String get tableName => 'pacotes_rastreador_j16';

  @override
  PacotesRastreadorJ16Row createRow(Map<String, dynamic> data) =>
      PacotesRastreadorJ16Row(data);
}

class PacotesRastreadorJ16Row extends SupabaseDataRow {
  PacotesRastreadorJ16Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacotesRastreadorJ16Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get type => getField<String>('type');
  set type(String? value) => setField<String>('type', value);

  DateTime? get dateTime => getField<DateTime>('date_time');
  set dateTime(DateTime? value) => setField<DateTime>('date_time', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get speed => getField<String>('speed');
  set speed(String? value) => setField<String>('speed', value);

  String? get satellites => getField<String>('satellites');
  set satellites(String? value) => setField<String>('satellites', value);

  String? get direction => getField<String>('direction');
  set direction(String? value) => setField<String>('direction', value);

  String? get row => getField<String>('row');
  set row(String? value) => setField<String>('row', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get alertId => getField<String>('alert_id');
  set alertId(String? value) => setField<String>('alert_id', value);

  String? get responseCode => getField<String>('response_code');
  set responseCode(String? value) => setField<String>('response_code', value);

  String? get equipamento => getField<String>('equipamento');
  set equipamento(String? value) => setField<String>('equipamento', value);

  String? get hdr => getField<String>('hdr');
  set hdr(String? value) => setField<String>('hdr', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);
}
