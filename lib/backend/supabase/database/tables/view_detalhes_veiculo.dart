import '../database.dart';

class ViewDetalhesVeiculoTable extends SupabaseTable<ViewDetalhesVeiculoRow> {
  @override
  String get tableName => 'view_detalhes_veiculo';

  @override
  ViewDetalhesVeiculoRow createRow(Map<String, dynamic> data) =>
      ViewDetalhesVeiculoRow(data);
}

class ViewDetalhesVeiculoRow extends SupabaseDataRow {
  ViewDetalhesVeiculoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ViewDetalhesVeiculoTable();

  int? get veiculoId => getField<int>('veiculo_id');
  set veiculoId(int? value) => setField<int>('veiculo_id', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  String? get motorista => getField<String>('motorista');
  set motorista(String? value) => setField<String>('motorista', value);

  String? get modeloVeiculo => getField<String>('modelo_veiculo');
  set modeloVeiculo(String? value) => setField<String>('modelo_veiculo', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  double? get ano => getField<double>('ano');
  set ano(double? value) => setField<double>('ano', value);

  double? get hodometro => getField<double>('hodometro');
  set hodometro(double? value) => setField<double>('hodometro', value);

  String? get statusRastreador => getField<String>('status_rastreador');
  set statusRastreador(String? value) =>
      setField<String>('status_rastreador', value);

  bool? get ignicaoLigada => getField<bool>('ignicao_ligada');
  set ignicaoLigada(bool? value) => setField<bool>('ignicao_ligada', value);

  bool? get bloqueioVeiculo => getField<bool>('bloqueio_veiculo');
  set bloqueioVeiculo(bool? value) => setField<bool>('bloqueio_veiculo', value);

  bool? get alertaMovimento => getField<bool>('alerta_movimento');
  set alertaMovimento(bool? value) => setField<bool>('alerta_movimento', value);

  DateTime? get ultimaAtualizacao => getField<DateTime>('ultima_atualizacao');
  set ultimaAtualizacao(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  String? get clienteNome => getField<String>('cliente_nome');
  set clienteNome(String? value) => setField<String>('cliente_nome', value);

  String? get clienteEmail => getField<String>('cliente_email');
  set clienteEmail(String? value) => setField<String>('cliente_email', value);

  String? get tipoUsuario => getField<String>('tipo_usuario');
  set tipoUsuario(String? value) => setField<String>('tipo_usuario', value);

  String? get userAssociado => getField<String>('user_associado');
  set userAssociado(String? value) => setField<String>('user_associado', value);

  bool? get ativo => getField<bool>('ativo');
  set ativo(bool? value) => setField<bool>('ativo', value);

  String? get logradouro => getField<String>('logradouro');
  set logradouro(String? value) => setField<String>('logradouro', value);

  String? get numEndereco => getField<String>('num_endereco');
  set numEndereco(String? value) => setField<String>('num_endereco', value);

  String? get bairro => getField<String>('bairro');
  set bairro(String? value) => setField<String>('bairro', value);

  String? get cep => getField<String>('cep');
  set cep(String? value) => setField<String>('cep', value);

  String? get cidade => getField<String>('cidade');
  set cidade(String? value) => setField<String>('cidade', value);

  String? get tipoEndereco => getField<String>('tipo_endereco');
  set tipoEndereco(String? value) => setField<String>('tipo_endereco', value);

  String? get rastreadorIdentificador =>
      getField<String>('rastreador_identificador');
  set rastreadorIdentificador(String? value) =>
      setField<String>('rastreador_identificador', value);

  String? get imei => getField<String>('imei');
  set imei(String? value) => setField<String>('imei', value);

  String? get devId => getField<String>('dev_id');
  set devId(String? value) => setField<String>('dev_id', value);

  String? get modeloRastreador => getField<String>('modelo_rastreador');
  set modeloRastreador(String? value) =>
      setField<String>('modelo_rastreador', value);

  String? get modeloImei => getField<String>('modelo_imei');
  set modeloImei(String? value) => setField<String>('modelo_imei', value);

  String? get numChip => getField<String>('num_chip');
  set numChip(String? value) => setField<String>('num_chip', value);

  String? get empresaChip => getField<String>('empresa_chip');
  set empresaChip(String? value) => setField<String>('empresa_chip', value);

  String? get operadora => getField<String>('operadora');
  set operadora(String? value) => setField<String>('operadora', value);

  String? get tipoIgnicao => getField<String>('tipo_ignicao');
  set tipoIgnicao(String? value) => setField<String>('tipo_ignicao', value);

  String? get ignicaoVirtual => getField<String>('ignicao_virtual');
  set ignicaoVirtual(String? value) =>
      setField<String>('ignicao_virtual', value);

  bool? get botaoPanico => getField<bool>('botao_panico');
  set botaoPanico(bool? value) => setField<bool>('botao_panico', value);

  String? get modeloOrigem => getField<String>('modelo_origem');
  set modeloOrigem(String? value) => setField<String>('modelo_origem', value);

  DateTime? get ultimaPosicao => getField<DateTime>('ultima_posicao');
  set ultimaPosicao(DateTime? value) =>
      setField<DateTime>('ultima_posicao', value);

  String? get latitude => getField<String>('latitude');
  set latitude(String? value) => setField<String>('latitude', value);

  String? get longitude => getField<String>('longitude');
  set longitude(String? value) => setField<String>('longitude', value);

  String? get velocidade => getField<String>('velocidade');
  set velocidade(String? value) => setField<String>('velocidade', value);

  String? get statusPing => getField<String>('status_ping');
  set statusPing(String? value) => setField<String>('status_ping', value);

  String? get bateriaPrincipal => getField<String>('bateria_principal');
  set bateriaPrincipal(String? value) =>
      setField<String>('bateria_principal', value);

  String? get bateriaInterna => getField<String>('bateria_interna');
  set bateriaInterna(String? value) =>
      setField<String>('bateria_interna', value);

  String? get cargaBateriaInterna => getField<String>('carga_bateria_interna');
  set cargaBateriaInterna(String? value) =>
      setField<String>('carga_bateria_interna', value);

  String? get temperatura => getField<String>('temperatura');
  set temperatura(String? value) => setField<String>('temperatura', value);

  String? get estadoAcelerometro => getField<String>('estado_acelerometro');
  set estadoAcelerometro(String? value) =>
      setField<String>('estado_acelerometro', value);
}
