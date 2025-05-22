import '../database.dart';

class CobrancasTable extends SupabaseTable<CobrancasRow> {
  @override
  String get tableName => 'cobrancas';

  @override
  CobrancasRow createRow(Map<String, dynamic> data) => CobrancasRow(data);
}

class CobrancasRow extends SupabaseDataRow {
  CobrancasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CobrancasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userCadastrou => getField<String>('user_cadastrou');
  set userCadastrou(String? value) => setField<String>('user_cadastrou', value);

  String? get formaPgto => getField<String>('forma_pgto');
  set formaPgto(String? value) => setField<String>('forma_pgto', value);

  DateTime? get dataContrato => getField<DateTime>('data_contrato');
  set dataContrato(DateTime? value) =>
      setField<DateTime>('data_contrato', value);

  double? get duracaoContrato => getField<double>('duracao_contrato');
  set duracaoContrato(double? value) =>
      setField<double>('duracao_contrato', value);

  double? get diaVencimento => getField<double>('dia_vencimento');
  set diaVencimento(double? value) => setField<double>('dia_vencimento', value);

  double? get valorMensalidade => getField<double>('valor_mensalidade');
  set valorMensalidade(double? value) =>
      setField<double>('valor_mensalidade', value);

  double? get valorTotalRastreadores =>
      getField<double>('valor_total_rastreadores');
  set valorTotalRastreadores(double? value) =>
      setField<double>('valor_total_rastreadores', value);

  String? get qtdParcelas => getField<String>('qtd_parcelas');
  set qtdParcelas(String? value) => setField<String>('qtd_parcelas', value);

  double? get taxaAdesao => getField<double>('taxa_adesao');
  set taxaAdesao(double? value) => setField<double>('taxa_adesao', value);

  double? get taxaInstalacao => getField<double>('taxa_instalacao');
  set taxaInstalacao(double? value) =>
      setField<double>('taxa_instalacao', value);

  double? get vlrParcela => getField<double>('vlr_parcela');
  set vlrParcela(double? value) => setField<double>('vlr_parcela', value);

  String? get situacaoContrato => getField<String>('situacao_contrato');
  set situacaoContrato(String? value) =>
      setField<String>('situacao_contrato', value);

  bool? get alertaEmail => getField<bool>('alerta_email');
  set alertaEmail(bool? value) => setField<bool>('alerta_email', value);

  bool? get alertaSms => getField<bool>('alerta_sms');
  set alertaSms(bool? value) => setField<bool>('alerta_sms', value);

  String? get statusPgto => getField<String>('status_pgto');
  set statusPgto(String? value) => setField<String>('status_pgto', value);

  DateTime? get dataVencimento => getField<DateTime>('data_vencimento');
  set dataVencimento(DateTime? value) =>
      setField<DateTime>('data_vencimento', value);

  String? get userUid => getField<String>('user_uid');
  set userUid(String? value) => setField<String>('user_uid', value);

  int? get numeroParcela => getField<int>('numero_parcela');
  set numeroParcela(int? value) => setField<int>('numero_parcela', value);

  String? get paymentMethodId => getField<String>('payment_method_id');
  set paymentMethodId(String? value) =>
      setField<String>('payment_method_id', value);
}
