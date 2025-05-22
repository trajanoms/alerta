import '../database.dart';

class ViewHistoricoVeiculoTable extends SupabaseTable<ViewHistoricoVeiculoRow> {
  @override
  String get tableName => 'view_historico_veiculo';

  @override
  ViewHistoricoVeiculoRow createRow(Map<String, dynamic> data) =>
      ViewHistoricoVeiculoRow(data);
}

class ViewHistoricoVeiculoRow extends SupabaseDataRow {
  ViewHistoricoVeiculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewHistoricoVeiculoTable();

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  String? get motorista => getField<String>('motorista');
  set motorista(String? value) => setField<String>('motorista', value);

  DateTime? get dataHora => getField<DateTime>('data_hora');
  set dataHora(DateTime? value) => setField<DateTime>('data_hora', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get velocidade => getField<String>('velocidade');
  set velocidade(String? value) => setField<String>('velocidade', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get ignicao => getField<String>('ignicao');
  set ignicao(String? value) => setField<String>('ignicao', value);

  String? get statusPing => getField<String>('status_ping');
  set statusPing(String? value) => setField<String>('status_ping', value);

  String? get modeloOrigem => getField<String>('modelo_origem');
  set modeloOrigem(String? value) => setField<String>('modelo_origem', value);

  String? get identificador => getField<String>('identificador');
  set identificador(String? value) => setField<String>('identificador', value);

  String? get enderecoFormatado => getField<String>('endereco_formatado');
  set enderecoFormatado(String? value) =>
      setField<String>('endereco_formatado', value);
}
