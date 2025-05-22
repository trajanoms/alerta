import '../database.dart';

class FuncionalidadesTable extends SupabaseTable<FuncionalidadesRow> {
  @override
  String get tableName => 'funcionalidades';

  @override
  FuncionalidadesRow createRow(Map<String, dynamic> data) =>
      FuncionalidadesRow(data);
}

class FuncionalidadesRow extends SupabaseDataRow {
  FuncionalidadesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => FuncionalidadesTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String get grupo => getField<String>('grupo')!;
  set grupo(String value) => setField<String>('grupo', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get chave => getField<String>('chave')!;
  set chave(String value) => setField<String>('chave', value);
}
