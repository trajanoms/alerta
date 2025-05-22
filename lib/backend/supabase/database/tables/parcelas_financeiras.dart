import '../database.dart';

class ParcelasFinanceirasTable extends SupabaseTable<ParcelasFinanceirasRow> {
  @override
  String get tableName => 'parcelas_financeiras';

  @override
  ParcelasFinanceirasRow createRow(Map<String, dynamic> data) =>
      ParcelasFinanceirasRow(data);
}

class ParcelasFinanceirasRow extends SupabaseDataRow {
  ParcelasFinanceirasRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ParcelasFinanceirasTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get lancamentoId => getField<String>('lancamento_id')!;
  set lancamentoId(String value) => setField<String>('lancamento_id', value);

  int get numeroParcela => getField<int>('numero_parcela')!;
  set numeroParcela(int value) => setField<int>('numero_parcela', value);

  double get valor => getField<double>('valor')!;
  set valor(double value) => setField<double>('valor', value);

  DateTime get dataVencimento => getField<DateTime>('data_vencimento')!;
  set dataVencimento(DateTime value) =>
      setField<DateTime>('data_vencimento', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);
}
