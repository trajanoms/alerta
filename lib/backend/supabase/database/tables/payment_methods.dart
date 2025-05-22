import '../database.dart';

class PaymentMethodsTable extends SupabaseTable<PaymentMethodsRow> {
  @override
  String get tableName => 'payment_methods';

  @override
  PaymentMethodsRow createRow(Map<String, dynamic> data) =>
      PaymentMethodsRow(data);
}

class PaymentMethodsRow extends SupabaseDataRow {
  PaymentMethodsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PaymentMethodsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get cobrancaId => getField<String>('cobranca_id')!;
  set cobrancaId(String value) => setField<String>('cobranca_id', value);

  String get userUid => getField<String>('user_uid')!;
  set userUid(String value) => setField<String>('user_uid', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  String get type => getField<String>('type')!;
  set type(String value) => setField<String>('type', value);

  double get valorPago => getField<double>('valor_pago')!;
  set valorPago(double value) => setField<double>('valor_pago', value);

  String get statusPgto => getField<String>('status_pgto')!;
  set statusPgto(String value) => setField<String>('status_pgto', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  DateTime? get updatedAt => getField<DateTime>('updated_at');
  set updatedAt(DateTime? value) => setField<DateTime>('updated_at', value);

  String? get boletoUrl => getField<String>('boleto_url');
  set boletoUrl(String? value) => setField<String>('boleto_url', value);

  String? get codigoBarrasBoleto => getField<String>('codigo_barras_boleto');
  set codigoBarrasBoleto(String? value) =>
      setField<String>('codigo_barras_boleto', value);

  String? get linhaDigitavelBoleto =>
      getField<String>('linha_digitavel_boleto');
  set linhaDigitavelBoleto(String? value) =>
      setField<String>('linha_digitavel_boleto', value);
}
