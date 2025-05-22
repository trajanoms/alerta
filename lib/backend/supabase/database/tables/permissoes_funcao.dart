import '../database.dart';

class PermissoesFuncaoTable extends SupabaseTable<PermissoesFuncaoRow> {
  @override
  String get tableName => 'permissoes_funcao';

  @override
  PermissoesFuncaoRow createRow(Map<String, dynamic> data) =>
      PermissoesFuncaoRow(data);
}

class PermissoesFuncaoRow extends SupabaseDataRow {
  PermissoesFuncaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PermissoesFuncaoTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  int? get tipoPermissaoId => getField<int>('tipo_permissao_id');
  set tipoPermissaoId(int? value) => setField<int>('tipo_permissao_id', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  bool? get clientesCobrancas => getField<bool>('clientes_cobrancas');
  set clientesCobrancas(bool? value) =>
      setField<bool>('clientes_cobrancas', value);

  bool? get clientesEndereco => getField<bool>('clientes_endereco');
  set clientesEndereco(bool? value) =>
      setField<bool>('clientes_endereco', value);

  bool? get clientesOpcoes => getField<bool>('clientes_opcoes');
  set clientesOpcoes(bool? value) => setField<bool>('clientes_opcoes', value);

  bool? get clientesDados => getField<bool>('clientes_dados');
  set clientesDados(bool? value) => setField<bool>('clientes_dados', value);

  bool? get veiculosCobrancas => getField<bool>('veiculos_cobrancas');
  set veiculosCobrancas(bool? value) =>
      setField<bool>('veiculos_cobrancas', value);

  bool? get veiculosEndereco => getField<bool>('veiculos_endereco');
  set veiculosEndereco(bool? value) =>
      setField<bool>('veiculos_endereco', value);

  bool? get veiculosOpcoes => getField<bool>('veiculos_opcoes');
  set veiculosOpcoes(bool? value) => setField<bool>('veiculos_opcoes', value);

  bool? get veiculosDados => getField<bool>('veiculos_dados');
  set veiculosDados(bool? value) => setField<bool>('veiculos_dados', value);

  bool? get financeiroCobrancas => getField<bool>('financeiro_cobrancas');
  set financeiroCobrancas(bool? value) =>
      setField<bool>('financeiro_cobrancas', value);

  bool? get financeiroEndereco => getField<bool>('financeiro_endereco');
  set financeiroEndereco(bool? value) =>
      setField<bool>('financeiro_endereco', value);

  bool? get financeiroOpcoes => getField<bool>('financeiro_opcoes');
  set financeiroOpcoes(bool? value) =>
      setField<bool>('financeiro_opcoes', value);

  bool? get financeiroDados => getField<bool>('financeiro_dados');
  set financeiroDados(bool? value) => setField<bool>('financeiro_dados', value);

  bool? get todosClientes => getField<bool>('todos_clientes');
  set todosClientes(bool? value) => setField<bool>('todos_clientes', value);

  bool? get todosVeiculos => getField<bool>('todos_veiculos');
  set todosVeiculos(bool? value) => setField<bool>('todos_veiculos', value);

  bool? get todosFinanceiro => getField<bool>('todos_financeiro');
  set todosFinanceiro(bool? value) => setField<bool>('todos_financeiro', value);
}
