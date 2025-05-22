import '../database.dart';

class ViewLojaRastreadoresComImagensTable
    extends SupabaseTable<ViewLojaRastreadoresComImagensRow> {
  @override
  String get tableName => 'view_loja_rastreadores_com_imagens';

  @override
  ViewLojaRastreadoresComImagensRow createRow(Map<String, dynamic> data) =>
      ViewLojaRastreadoresComImagensRow(data);
}

class ViewLojaRastreadoresComImagensRow extends SupabaseDataRow {
  ViewLojaRastreadoresComImagensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewLojaRastreadoresComImagensTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  String? get descricao => getField<String>('descricao');
  set descricao(String? value) => setField<String>('descricao', value);

  String? get tipoIgnicao => getField<String>('tipo_ignicao');
  set tipoIgnicao(String? value) => setField<String>('tipo_ignicao', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get frequencia => getField<String>('frequencia');
  set frequencia(String? value) => setField<String>('frequencia', value);

  String? get veiculo => getField<String>('veiculo');
  set veiculo(String? value) => setField<String>('veiculo', value);

  int? get quantidade => getField<int>('quantidade');
  set quantidade(int? value) => setField<int>('quantidade', value);

  List<String> get imagens => getListField<String>('imagens');
  set imagens(List<String>? value) => setListField<String>('imagens', value);

  String? get especificacoes => getField<String>('especificacoes');
  set especificacoes(String? value) =>
      setField<String>('especificacoes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);

  String? get imagemDestacada => getField<String>('imagem_destacada');
  set imagemDestacada(String? value) =>
      setField<String>('imagem_destacada', value);
}
