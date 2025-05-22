import '../database.dart';

class LancamentosFinanceirosTable
    extends SupabaseTable<LancamentosFinanceirosRow> {
  @override
  String get tableName => 'lancamentos_financeiros';

  @override
  LancamentosFinanceirosRow createRow(Map<String, dynamic> data) =>
      LancamentosFinanceirosRow(data);
}

class LancamentosFinanceirosRow extends SupabaseDataRow {
  LancamentosFinanceirosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => LancamentosFinanceirosTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get tipo => getField<String>('tipo')!;
  set tipo(String value) => setField<String>('tipo', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  double get valor => getField<double>('valor')!;
  set valor(double value) => setField<double>('valor', value);

  String get dataVencimento => getField<String>('data_vencimento')!;
  set dataVencimento(String value) =>
      setField<String>('data_vencimento', value);

  DateTime? get dataPagamento => getField<DateTime>('data_pagamento');
  set dataPagamento(DateTime? value) =>
      setField<DateTime>('data_pagamento', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get formaPagamento => getField<String>('forma_pagamento');
  set formaPagamento(String? value) =>
      setField<String>('forma_pagamento', value);

  String? get observacoes => getField<String>('observacoes');
  set observacoes(String? value) => setField<String>('observacoes', value);

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get grupoParcelamento => getField<String>('grupo_parcelamento');
  set grupoParcelamento(String? value) =>
      setField<String>('grupo_parcelamento', value);

  String? get numeroParcela => getField<String>('numero_parcela');
  set numeroParcela(String? value) => setField<String>('numero_parcela', value);

  String? get criadoPor => getField<String>('criado_por');
  set criadoPor(String? value) => setField<String>('criado_por', value);

  String? get nomeCliente => getField<String>('nome_cliente');
  set nomeCliente(String? value) => setField<String>('nome_cliente', value);
}
