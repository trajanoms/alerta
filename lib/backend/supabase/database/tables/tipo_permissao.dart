import '../database.dart';

class TipoPermissaoTable extends SupabaseTable<TipoPermissaoRow> {
  @override
  String get tableName => 'tipo_permissao';

  @override
  TipoPermissaoRow createRow(Map<String, dynamic> data) =>
      TipoPermissaoRow(data);
}

class TipoPermissaoRow extends SupabaseDataRow {
  TipoPermissaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TipoPermissaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  bool? get ativa => getField<bool>('ativa');
  set ativa(bool? value) => setField<bool>('ativa', value);
}
