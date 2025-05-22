import '../database.dart';

class CercaVirtualTable extends SupabaseTable<CercaVirtualRow> {
  @override
  String get tableName => 'cerca_virtual';

  @override
  CercaVirtualRow createRow(Map<String, dynamic> data) => CercaVirtualRow(data);
}

class CercaVirtualRow extends SupabaseDataRow {
  CercaVirtualRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CercaVirtualTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get endereco => getField<String>('endereco');
  set endereco(String? value) => setField<String>('endereco', value);

  int? get raioMetros => getField<int>('raio_metros');
  set raioMetros(int? value) => setField<int>('raio_metros', value);

  int? get limiteVelocidade => getField<int>('limite_velocidade');
  set limiteVelocidade(int? value) => setField<int>('limite_velocidade', value);

  String? get acaoAoEntrar => getField<String>('acao_ao_entrar');
  set acaoAoEntrar(String? value) => setField<String>('acao_ao_entrar', value);

  String? get acaoAoSair => getField<String>('acao_ao_sair');
  set acaoAoSair(String? value) => setField<String>('acao_ao_sair', value);

  bool? get principal => getField<bool>('principal');
  set principal(bool? value) => setField<bool>('principal', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get latlng => getField<String>('latlng');
  set latlng(String? value) => setField<String>('latlng', value);
}
