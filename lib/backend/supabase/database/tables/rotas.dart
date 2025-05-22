import '../database.dart';

class RotasTable extends SupabaseTable<RotasRow> {
  @override
  String get tableName => 'rotas';

  @override
  RotasRow createRow(Map<String, dynamic> data) => RotasRow(data);
}

class RotasRow extends SupabaseDataRow {
  RotasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RotasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  bool? get desejaNotificacoes => getField<bool>('deseja_notificacoes');
  set desejaNotificacoes(bool? value) =>
      setField<bool>('deseja_notificacoes', value);

  String? get toleranciaAlertas => getField<String>('tolerancia_alertas');
  set toleranciaAlertas(String? value) =>
      setField<String>('tolerancia_alertas', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get enderecoPartida => getField<String>('endereco_partida');
  set enderecoPartida(String? value) =>
      setField<String>('endereco_partida', value);

  String? get enderecoChegada => getField<String>('endereco_chegada');
  set enderecoChegada(String? value) =>
      setField<String>('endereco_chegada', value);

  String? get latitudePartida => getField<String>('latitude_partida');
  set latitudePartida(String? value) =>
      setField<String>('latitude_partida', value);

  String? get longitudePartida => getField<String>('longitude_partida');
  set longitudePartida(String? value) =>
      setField<String>('longitude_partida', value);

  String? get latitudeChegada => getField<String>('latitude_chegada');
  set latitudeChegada(String? value) =>
      setField<String>('latitude_chegada', value);

  String? get longitudeChegada => getField<String>('longitude_chegada');
  set longitudeChegada(String? value) =>
      setField<String>('longitude_chegada', value);

  String? get distanciaKm => getField<String>('distancia_km');
  set distanciaKm(String? value) => setField<String>('distancia_km', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
