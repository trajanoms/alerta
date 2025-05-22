import '../database.dart';

class ViewTotaisFinanceirosTable
    extends SupabaseTable<ViewTotaisFinanceirosRow> {
  @override
  String get tableName => 'view_totais_financeiros';

  @override
  ViewTotaisFinanceirosRow createRow(Map<String, dynamic> data) =>
      ViewTotaisFinanceirosRow(data);
}

class ViewTotaisFinanceirosRow extends SupabaseDataRow {
  ViewTotaisFinanceirosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewTotaisFinanceirosTable();

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  double? get total => getField<double>('total');
  set total(double? value) => setField<double>('total', value);
}
