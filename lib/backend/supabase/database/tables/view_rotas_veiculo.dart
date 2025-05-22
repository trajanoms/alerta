import '../database.dart';

class ViewRotasVeiculoTable extends SupabaseTable<ViewRotasVeiculoRow> {
  @override
  String get tableName => 'view_rotas_veiculo';

  @override
  ViewRotasVeiculoRow createRow(Map<String, dynamic> data) =>
      ViewRotasVeiculoRow(data);
}

class ViewRotasVeiculoRow extends SupabaseDataRow {
  ViewRotasVeiculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewRotasVeiculoTable();

  String? get rotaId => getField<String>('rota_id');
  set rotaId(String? value) => setField<String>('rota_id', value);

  String? get nomeRota => getField<String>('nome_rota');
  set nomeRota(String? value) => setField<String>('nome_rota', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  String? get nomeMotorista => getField<String>('nome_motorista');
  set nomeMotorista(String? value) => setField<String>('nome_motorista', value);

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

  bool? get desejaNotificacoes => getField<bool>('deseja_notificacoes');
  set desejaNotificacoes(bool? value) =>
      setField<bool>('deseja_notificacoes', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  int? get numeroParadas => getField<int>('numero_paradas');
  set numeroParadas(int? value) => setField<int>('numero_paradas', value);
}
