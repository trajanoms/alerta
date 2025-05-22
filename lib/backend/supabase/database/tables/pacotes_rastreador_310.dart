import '../database.dart';

class PacotesRastreador310Table extends SupabaseTable<PacotesRastreador310Row> {
  @override
  String get tableName => 'pacotes_rastreador_310';

  @override
  PacotesRastreador310Row createRow(Map<String, dynamic> data) =>
      PacotesRastreador310Row(data);
}

class PacotesRastreador310Row extends SupabaseDataRow {
  PacotesRastreador310Row(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PacotesRastreador310Table();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get hdr => getField<String>('hdr');
  set hdr(String? value) => setField<String>('hdr', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);

  String? get model => getField<String>('model');
  set model(String? value) => setField<String>('model', value);

  String? get swVer => getField<String>('sw_ver');
  set swVer(String? value) => setField<String>('sw_ver', value);

  DateTime? get date => getField<DateTime>('date');
  set date(DateTime? value) => setField<DateTime>('date', value);

  PostgresTime? get time => getField<PostgresTime>('time');
  set time(PostgresTime? value) => setField<PostgresTime>('time', value);

  String? get cell => getField<String>('cell');
  set cell(String? value) => setField<String>('cell', value);

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

  String? get dist => getField<String>('dist');
  set dist(String? value) => setField<String>('dist', value);

  String? get pwrVolt => getField<String>('pwr_volt');
  set pwrVolt(String? value) => setField<String>('pwr_volt', value);

  String? get iO => getField<String>('i_o');
  set iO(String? value) => setField<String>('i_o', value);

  String? get mode => getField<String>('mode');
  set mode(String? value) => setField<String>('mode', value);

  String? get msgNum => getField<String>('msg_num');
  set msgNum(String? value) => setField<String>('msg_num', value);

  String? get hMeter => getField<String>('h_meter');
  set hMeter(String? value) => setField<String>('h_meter', value);

  String? get backVolt => getField<String>('back_volt');
  set backVolt(String? value) => setField<String>('back_volt', value);

  String? get msgType => getField<String>('msg_type');
  set msgType(String? value) => setField<String>('msg_type', value);

  String? get cellId => getField<String>('cell_id');
  set cellId(String? value) => setField<String>('cell_id', value);

  String? get mcc => getField<String>('mcc');
  set mcc(String? value) => setField<String>('mcc', value);

  String? get mnc => getField<String>('mnc');
  set mnc(String? value) => setField<String>('mnc', value);

  String? get rxLvl => getField<String>('rx_lvl');
  set rxLvl(String? value) => setField<String>('rx_lvl', value);

  String? get lac => getField<String>('lac');
  set lac(String? value) => setField<String>('lac', value);

  String? get tmAdv => getField<String>('tm_adv');
  set tmAdv(String? value) => setField<String>('tm_adv', value);

  String? get row => getField<String>('row');
  set row(String? value) => setField<String>('row', value);

  String? get emgId => getField<String>('emg_id');
  set emgId(String? value) => setField<String>('emg_id', value);

  String? get evtId => getField<String>('evt_id');
  set evtId(String? value) => setField<String>('evt_id', value);

  String? get alertId => getField<String>('alert_id');
  set alertId(String? value) => setField<String>('alert_id', value);
}
