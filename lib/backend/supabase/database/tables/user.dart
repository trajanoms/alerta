import '../database.dart';

class UserTable extends SupabaseTable<UserRow> {
  @override
  String get tableName => 'user';

  @override
  UserRow createRow(Map<String, dynamic> data) => UserRow(data);
}

class UserRow extends SupabaseDataRow {
  UserRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  String? get uid => getField<String>('uid');
  set uid(String? value) => setField<String>('uid', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get tipoDocumento => getField<String>('tipo_documento');
  set tipoDocumento(String? value) => setField<String>('tipo_documento', value);

  String? get documento => getField<String>('documento');
  set documento(String? value) => setField<String>('documento', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  DateTime? get dataNascimento => getField<DateTime>('data_nascimento');
  set dataNascimento(DateTime? value) =>
      setField<DateTime>('data_nascimento', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);

  String? get nomeContatoSec => getField<String>('nome_contato_sec');
  set nomeContatoSec(String? value) =>
      setField<String>('nome_contato_sec', value);

  String? get telefoneContatoSec => getField<String>('telefone_contato_sec');
  set telefoneContatoSec(String? value) =>
      setField<String>('telefone_contato_sec', value);

  String? get grauParentesco => getField<String>('grau_parentesco');
  set grauParentesco(String? value) =>
      setField<String>('grau_parentesco', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get numEndereco => getField<String>('num_endereco');
  set numEndereco(String? value) => setField<String>('num_endereco', value);

  String? get tipoEndereco => getField<String>('tipo_endereco');
  set tipoEndereco(String? value) => setField<String>('tipo_endereco', value);

  String get email => getField<String>('email')!;
  set email(String value) => setField<String>('email', value);

  bool? get admMaster => getField<bool>('adm_master');
  set admMaster(bool? value) => setField<bool>('adm_master', value);

  String? get colorUI => getField<String>('colorUI');
  set colorUI(String? value) => setField<String>('colorUI', value);

  bool? get bloqueioVeiculos => getField<bool>('bloqueio_veiculos');
  set bloqueioVeiculos(bool? value) =>
      setField<bool>('bloqueio_veiculos', value);

  bool? get cadastroNovosRastreadores =>
      getField<bool>('cadastro_novos_rastreadores');
  set cadastroNovosRastreadores(bool? value) =>
      setField<bool>('cadastro_novos_rastreadores', value);

  String? get logoExpandida => getField<String>('logo_expandida');
  set logoExpandida(String? value) => setField<String>('logo_expandida', value);

  String? get favicon => getField<String>('favicon');
  set favicon(String? value) => setField<String>('favicon', value);

  bool? get acessoBloqueado => getField<bool>('acesso_bloqueado');
  set acessoBloqueado(bool? value) => setField<bool>('acesso_bloqueado', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get userAssociado => getField<String>('user_associado');
  set userAssociado(String? value) => setField<String>('user_associado', value);

  int? get codCliente => getField<int>('cod_cliente');
  set codCliente(int? value) => setField<int>('cod_cliente', value);

  String? get asaasid => getField<String>('asaasid');
  set asaasid(String? value) => setField<String>('asaasid', value);

  String? get tipoPermissao => getField<String>('tipo_permissao');
  set tipoPermissao(String? value) => setField<String>('tipo_permissao', value);

  int? get tipoPermissaoId => getField<int>('tipo_permissao_id');
  set tipoPermissaoId(int? value) => setField<int>('tipo_permissao_id', value);
}
