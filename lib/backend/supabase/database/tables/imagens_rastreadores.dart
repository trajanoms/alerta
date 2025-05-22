import '../database.dart';

class ImagensRastreadoresTable extends SupabaseTable<ImagensRastreadoresRow> {
  @override
  String get tableName => 'imagens_rastreadores';

  @override
  ImagensRastreadoresRow createRow(Map<String, dynamic> data) =>
      ImagensRastreadoresRow(data);
}

class ImagensRastreadoresRow extends SupabaseDataRow {
  ImagensRastreadoresRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ImagensRastreadoresTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String? get rastreadorlojaId => getField<String>('rastreadorloja_id');
  set rastreadorlojaId(String? value) =>
      setField<String>('rastreadorloja_id', value);

  String? get legenda => getField<String>('legenda');
  set legenda(String? value) => setField<String>('legenda', value);

  String get imagemUrl => getField<String>('imagem_url')!;
  set imagemUrl(String value) => setField<String>('imagem_url', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
