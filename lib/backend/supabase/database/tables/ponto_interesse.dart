import '../database.dart';

class PontoInteresseTable extends SupabaseTable<PontoInteresseRow> {
  @override
  String get tableName => 'ponto_interesse';

  @override
  PontoInteresseRow createRow(Map<String, dynamic> data) =>
      PontoInteresseRow(data);
}

class PontoInteresseRow extends SupabaseDataRow {
  PontoInteresseRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PontoInteresseTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  bool? get receberNotificacao => getField<bool>('receber_notificacao');
  set receberNotificacao(bool? value) =>
      setField<bool>('receber_notificacao', value);

  int? get distanciaNotificacaoMetros =>
      getField<int>('distancia_notificacao_metros');
  set distanciaNotificacaoMetros(int? value) =>
      setField<int>('distancia_notificacao_metros', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get tipoPontoInteresse => getField<String>('tipo_ponto_interesse');
  set tipoPontoInteresse(String? value) =>
      setField<String>('tipo_ponto_interesse', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get latlng => getField<String>('latlng');
  set latlng(String? value) => setField<String>('latlng', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
