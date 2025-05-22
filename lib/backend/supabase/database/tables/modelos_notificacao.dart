import '../database.dart';

class ModelosNotificacaoTable extends SupabaseTable<ModelosNotificacaoRow> {
  @override
  String get tableName => 'modelos_notificacao';

  @override
  ModelosNotificacaoRow createRow(Map<String, dynamic> data) =>
      ModelosNotificacaoRow(data);
}

class ModelosNotificacaoRow extends SupabaseDataRow {
  ModelosNotificacaoRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ModelosNotificacaoTable();

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

  DateTime? get criadoEm => getField<DateTime>('criado_em');
  set criadoEm(DateTime? value) => setField<DateTime>('criado_em', value);

  String? get criadoPor => getField<String>('criado_por');
  set criadoPor(String? value) => setField<String>('criado_por', value);
}
