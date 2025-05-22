import '../database.dart';

class ViewVeiculosCompletoTable extends SupabaseTable<ViewVeiculosCompletoRow> {
  @override
  String get tableName => 'view_veiculos_completo';

  @override
  ViewVeiculosCompletoRow createRow(Map<String, dynamic> data) =>
      ViewVeiculosCompletoRow(data);
}

class ViewVeiculosCompletoRow extends SupabaseDataRow {
  ViewVeiculosCompletoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewVeiculosCompletoTable();

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  String? get clienteNome => getField<String>('cliente_nome');
  set clienteNome(String? value) => setField<String>('cliente_nome', value);

  String? get clienteEmail => getField<String>('cliente_email');
  set clienteEmail(String? value) => setField<String>('cliente_email', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get userAssociado => getField<String>('user_associado');
  set userAssociado(String? value) => setField<String>('user_associado', value);

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  double? get hodometro => getField<double>('hodometro');
  set hodometro(double? value) => setField<double>('hodometro', value);

  bool? get bloqueioVeiculo => getField<bool>('bloqueio_veiculo');
  set bloqueioVeiculo(bool? value) => setField<bool>('bloqueio_veiculo', value);

  bool? get alertaMovimento => getField<bool>('alerta_movimento');
  set alertaMovimento(bool? value) => setField<bool>('alerta_movimento', value);

  String? get statusRastreador => getField<String>('status_rastreador');
  set statusRastreador(String? value) =>
      setField<String>('status_rastreador', value);

  DateTime? get veiculoCreatedAt => getField<DateTime>('veiculo_created_at');
  set veiculoCreatedAt(DateTime? value) =>
      setField<DateTime>('veiculo_created_at', value);

  String? get rastreador => getField<String>('rastreador');
  set rastreador(String? value) => setField<String>('rastreador', value);

  bool? get ignicaoLigada => getField<bool>('ignicao_ligada');
  set ignicaoLigada(bool? value) => setField<bool>('ignicao_ligada', value);

  DateTime? get ultimaAtualizacao => getField<DateTime>('ultima_atualizacao');
  set ultimaAtualizacao(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get rastreadorId => getField<String>('rastreador_id');
  set rastreadorId(String? value) => setField<String>('rastreador_id', value);

  String? get imei => getField<String>('imei');
  set imei(String? value) => setField<String>('imei', value);

  String? get modeloRastreador => getField<String>('modelo_rastreador');
  set modeloRastreador(String? value) =>
      setField<String>('modelo_rastreador', value);

  String? get operadora => getField<String>('operadora');
  set operadora(String? value) => setField<String>('operadora', value);

  String? get tipoIgnicao => getField<String>('tipo_ignicao');
  set tipoIgnicao(String? value) => setField<String>('tipo_ignicao', value);

  int? get veiculosTotais => getField<int>('veiculos_totais');
  set veiculosTotais(int? value) => setField<int>('veiculos_totais', value);

  int? get veiculosRastreados => getField<int>('veiculos_rastreados');
  set veiculosRastreados(int? value) =>
      setField<int>('veiculos_rastreados', value);

  int? get semSinal => getField<int>('sem_sinal');
  set semSinal(int? value) => setField<int>('sem_sinal', value);

  int? get desligados => getField<int>('desligados');
  set desligados(int? value) => setField<int>('desligados', value);

  DateTime? get ultimaAtualizacaoMaisRecente =>
      getField<DateTime>('ultima_atualizacao_mais_recente');
  set ultimaAtualizacaoMaisRecente(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao_mais_recente', value);
}
