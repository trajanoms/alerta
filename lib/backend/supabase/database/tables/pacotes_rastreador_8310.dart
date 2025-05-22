import '../database.dart';

class PacotesRastreador8310Table
    extends SupabaseTable<PacotesRastreador8310Row> {
  @override
  String get tableName => 'pacotes_rastreador_8310';

  @override
  PacotesRastreador8310Row createRow(Map<String, dynamic> data) =>
      PacotesRastreador8310Row(data);
}

class PacotesRastreador8310Row extends SupabaseDataRow {
  PacotesRastreador8310Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacotesRastreador8310Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get hdr => getField<String>('hdr');
  set hdr(String? value) => setField<String>('hdr', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);

  String? get reportMap => getField<String>('report_map');
  set reportMap(String? value) => setField<String>('report_map', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get swVer => getField<String>('sw_ver');
  set swVer(String? value) => setField<String>('sw_ver', value);

  String? get msgType => getField<String>('msg_type');
  set msgType(String? value) => setField<String>('msg_type', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  PostgresTime? get time => getField<PostgresTime>('time');
  set time(PostgresTime? value) => setField<PostgresTime>('time', value);

  String? get cellId => getField<String>('cell_id');
  set cellId(String? value) => setField<String>('cell_id', value);

  String? get mcc => getField<String>('mcc');
  set mcc(String? value) => setField<String>('mcc', value);

  String? get mnc => getField<String>('mnc');
  set mnc(String? value) => setField<String>('mnc', value);

  String? get lac => getField<String>('lac');
  set lac(String? value) => setField<String>('lac', value);

  String? get rxLvl => getField<String>('rx_lvl');
  set rxLvl(String? value) => setField<String>('rx_lvl', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get speed => getField<String>('speed');
  set speed(String? value) => setField<String>('speed', value);

  String? get crs => getField<String>('crs');
  set crs(String? value) => setField<String>('crs', value);

  String? get satellites => getField<String>('satellites');
  set satellites(String? value) => setField<String>('satellites', value);

  String? get fix => getField<String>('fix');
  set fix(String? value) => setField<String>('fix', value);

  String? get inState => getField<String>('in_state');
  set inState(String? value) => setField<String>('in_state', value);

  String? get outState => getField<String>('out_state');
  set outState(String? value) => setField<String>('out_state', value);

  String? get mode => getField<String>('mode');
  set mode(String? value) => setField<String>('mode', value);

  String? get sttRptType => getField<String>('stt_rpt_type');
  set sttRptType(String? value) => setField<String>('stt_rpt_type', value);

  String? get msgNum => getField<String>('msg_num');
  set msgNum(String? value) => setField<String>('msg_num', value);

  String? get reserved => getField<String>('reserved');
  set reserved(String? value) => setField<String>('reserved', value);

  String? get assignMap => getField<String>('assign_map');
  set assignMap(String? value) => setField<String>('assign_map', value);

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

  String? get tempoFuncionamento => getField<String>('tempo_funcionamento');
  set tempoFuncionamento(String? value) =>
      setField<String>('tempo_funcionamento', value);

  String? get estadoAcelerometro => getField<String>('estado_acelerometro');
  set estadoAcelerometro(String? value) =>
      setField<String>('estado_acelerometro', value);

  String? get sequencial => getField<String>('sequencial');
  set sequencial(String? value) => setField<String>('sequencial', value);

  String? get row => getField<String>('row');
  set row(String? value) => setField<String>('row', value);

  String? get alertId => getField<String>('alert_id');
  set alertId(String? value) => setField<String>('alert_id', value);

  String? get alertMode => getField<String>('alert_mode');
  set alertMode(String? value) => setField<String>('alert_mode', value);

  String? get alertData => getField<String>('alert_data');
  set alertData(String? value) => setField<String>('alert_data', value);
}
