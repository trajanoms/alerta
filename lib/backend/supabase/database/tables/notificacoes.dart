import '../database.dart';

class NotificacoesTable extends SupabaseTable<NotificacoesRow> {
  @override
  String get tableName => 'notificacoes';

  @override
  NotificacoesRow createRow(Map<String, dynamic> data) => NotificacoesRow(data);
}

class NotificacoesRow extends SupabaseDataRow {
  NotificacoesRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => NotificacoesTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get titulo => getField<String>('titulo')!;
  set titulo(String value) => setField<String>('titulo', value);

  String get mensagem => getField<String>('mensagem')!;
  set mensagem(String value) => setField<String>('mensagem', value);

  String? get situacao => getField<String>('situacao');
  set situacao(String? value) => setField<String>('situacao', value);

  String? get vencimentoEm => getField<String>('vencimento_em');
  set vencimentoEm(String? value) => setField<String>('vencimento_em', value);

  bool? get agendarEnvio => getField<bool>('agendar_envio');
  set agendarEnvio(bool? value) => setField<bool>('agendar_envio', value);

  DateTime? get dataEnvio => getField<DateTime>('data_envio');
  set dataEnvio(DateTime? value) => setField<DateTime>('data_envio', value);

  PostgresTime? get horaEnvio => getField<PostgresTime>('hora_envio');
  set horaEnvio(PostgresTime? value) =>
      setField<PostgresTime>('hora_envio', value);

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get clienteNome => getField<String>('cliente_nome');
  set clienteNome(String? value) => setField<String>('cliente_nome', value);

  String? get clienteUid => getField<String>('cliente_uid');
  set clienteUid(String? value) => setField<String>('cliente_uid', value);

  String? get criadoPor => getField<String>('criado_por');
  set criadoPor(String? value) => setField<String>('criado_por', value);

  bool get salvarModelo => getField<bool>('salvar_modelo')!;
  set salvarModelo(bool value) => setField<bool>('salvar_modelo', value);

  bool get lida => getField<bool>('lida')!;
  set lida(bool value) => setField<bool>('lida', value);
}
