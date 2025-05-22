import '../database.dart';

class RastreadoresTable extends SupabaseTable<RastreadoresRow> {
  @override
  String get tableName => 'rastreadores';

  @override
  RastreadoresRow createRow(Map<String, dynamic> data) => RastreadoresRow(data);
}

class RastreadoresRow extends SupabaseDataRow {
  RastreadoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RastreadoresTable();

  String get rastreadorId => getField<String>('rastreador_id')!;
  set rastreadorId(String value) => setField<String>('rastreador_id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get imei => getField<String>('imei');
  set imei(String? value) => setField<String>('imei', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get modeloImei => getField<String>('modelo_imei');
  set modeloImei(String? value) => setField<String>('modelo_imei', value);

  String? get numChip => getField<String>('num_chip');
  set numChip(String? value) => setField<String>('num_chip', value);

  String? get empresaChip => getField<String>('empresa_chip');
  set empresaChip(String? value) => setField<String>('empresa_chip', value);

  String? get operadora => getField<String>('operadora');
  set operadora(String? value) => setField<String>('operadora', value);

  String? get tipoIgnicao => getField<String>('tipo_ignicao');
  set tipoIgnicao(String? value) => setField<String>('tipo_ignicao', value);

  bool? get botaoPanico => getField<bool>('botao_panico');
  set botaoPanico(bool? value) => setField<bool>('botao_panico', value);

  String? get ignicaoVirtual => getField<String>('ignicao_virtual');
  set ignicaoVirtual(String? value) =>
      setField<String>('ignicao_virtual', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get modalidade => getField<String>('modalidade');
  set modalidade(String? value) => setField<String>('modalidade', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);
}
