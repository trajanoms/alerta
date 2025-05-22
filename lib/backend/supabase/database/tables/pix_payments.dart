import '../database.dart';

class PixPaymentsTable extends SupabaseTable<PixPaymentsRow> {
  @override
  String get tableName => 'pix_payments';

  @override
  PixPaymentsRow createRow(Map<String, dynamic> data) => PixPaymentsRow(data);
}

class PixPaymentsRow extends SupabaseDataRow {
  PixPaymentsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PixPaymentsTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get paymentMethodId => getField<String>('payment_method_id')!;
  set paymentMethodId(String value) =>
      setField<String>('payment_method_id', value);

  String get qrCode => getField<String>('qr_code')!;
  set qrCode(String value) => setField<String>('qr_code', value);

  String get pixCode => getField<String>('pix_code')!;
  set pixCode(String value) => setField<String>('pix_code', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
