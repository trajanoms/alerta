import '../database.dart';

class ViewPingsGpsTable extends SupabaseTable<ViewPingsGpsRow> {
  @override
  String get tableName => 'view_pings_gps';

  @override
  ViewPingsGpsRow createRow(Map<String, dynamic> data) => ViewPingsGpsRow(data);
}

class ViewPingsGpsRow extends SupabaseDataRow {
  ViewPingsGpsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewPingsGpsTable();

  int? get id => getField<int>('id');
  set id(int? value) => setField<int>('id', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);

  DateTime? get dataHora => getField<DateTime>('data_hora');
  set dataHora(DateTime? value) => setField<DateTime>('data_hora', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get velocidade => getField<String>('velocidade');
  set velocidade(String? value) => setField<String>('velocidade', value);

  String? get satellites => getField<String>('satellites');
  set satellites(String? value) => setField<String>('satellites', value);

  String? get direction => getField<String>('direction');
  set direction(String? value) => setField<String>('direction', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get alarmType => getField<String>('alarm_type');
  set alarmType(String? value) => setField<String>('alarm_type', value);

  String? get equipamento => getField<String>('equipamento');
  set equipamento(String? value) => setField<String>('equipamento', value);

  String? get bateriaPrincipal => getField<String>('bateria_principal');
  set bateriaPrincipal(String? value) =>
      setField<String>('bateria_principal', value);

  String? get bateriaInterna => getField<String>('bateria_interna');
  set bateriaInterna(String? value) =>
      setField<String>('bateria_interna', value);

  String? get cargaBateriaInterna => getField<String>('carga_bateria_interna');
  set cargaBateriaInterna(String? value) =>
      setField<String>('carga_bateria_interna', value);

  String? get temperatura => getField<String>('temperatura');
  set temperatura(String? value) => setField<String>('temperatura', value);

  String? get estadoAcelerometro => getField<String>('estado_acelerometro');
  set estadoAcelerometro(String? value) =>
      setField<String>('estado_acelerometro', value);

  String? get modeloOrigem => getField<String>('modelo_origem');
  set modeloOrigem(String? value) => setField<String>('modelo_origem', value);
}
