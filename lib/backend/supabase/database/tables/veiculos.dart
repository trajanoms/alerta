import '../database.dart';

class VeiculosTable extends SupabaseTable<VeiculosRow> {
  @override
  String get tableName => 'veiculos';

  @override
  VeiculosRow createRow(Map<String, dynamic> data) => VeiculosRow(data);
}

class VeiculosRow extends SupabaseDataRow {
  VeiculosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => VeiculosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get tipo => getField<String>('tipo');
  set tipo(String? value) => setField<String>('tipo', value);

  String? get marca => getField<String>('marca');
  set marca(String? value) => setField<String>('marca', value);

  String? get cor => getField<String>('cor');
  set cor(String? value) => setField<String>('cor', value);

  double? get ano => getField<double>('ano');
  set ano(double? value) => setField<double>('ano', value);

  double? get hodometro => getField<double>('hodometro');
  set hodometro(double? value) => setField<double>('hodometro', value);

  String? get modelo => getField<String>('modelo');
  set modelo(String? value) => setField<String>('modelo', value);

  String? get responsavel => getField<String>('responsavel');
  set responsavel(String? value) => setField<String>('responsavel', value);

  bool? get rastreadorMovimento => getField<bool>('rastreador_movimento');
  set rastreadorMovimento(bool? value) =>
      setField<bool>('rastreador_movimento', value);

  bool? get ignicaoLigada => getField<bool>('ignicao_ligada');
  set ignicaoLigada(bool? value) => setField<bool>('ignicao_ligada', value);

  bool? get cercaVirtualViolada => getField<bool>('cerca_virtual_violada');
  set cercaVirtualViolada(bool? value) =>
      setField<bool>('cerca_virtual_violada', value);

  bool? get limiteVelocidade => getField<bool>('limite_velocidade');
  set limiteVelocidade(bool? value) =>
      setField<bool>('limite_velocidade', value);

  bool? get bateriaFraca => getField<bool>('bateria_fraca');
  set bateriaFraca(bool? value) => setField<bool>('bateria_fraca', value);

  bool? get desconectadoEnergia => getField<bool>('desconectado_energia');
  set desconectadoEnergia(bool? value) =>
      setField<bool>('desconectado_energia', value);

  bool? get alertaMovimento => getField<bool>('alerta_movimento');
  set alertaMovimento(bool? value) => setField<bool>('alerta_movimento', value);

  bool? get bloqueioVeiculo => getField<bool>('bloqueio_veiculo');
  set bloqueioVeiculo(bool? value) => setField<bool>('bloqueio_veiculo', value);

  String? get rastreadorId => getField<String>('rastreador_id');
  set rastreadorId(String? value) => setField<String>('rastreador_id', value);

  String? get placa => getField<String>('placa');
  set placa(String? value) => setField<String>('placa', value);

  DateTime? get ultimaAtualizacao => getField<DateTime>('ultima_atualizacao');
  set ultimaAtualizacao(DateTime? value) =>
      setField<DateTime>('ultima_atualizacao', value);

  String? get statusRastreador => getField<String>('status_rastreador');
  set statusRastreador(String? value) =>
      setField<String>('status_rastreador', value);

  String? get clienteId => getField<String>('cliente_id');
  set clienteId(String? value) => setField<String>('cliente_id', value);

  String? get cliente => getField<String>('cliente');
  set cliente(String? value) => setField<String>('cliente', value);

  String? get rastreador => getField<String>('rastreador');
  set rastreador(String? value) => setField<String>('rastreador', value);
}
