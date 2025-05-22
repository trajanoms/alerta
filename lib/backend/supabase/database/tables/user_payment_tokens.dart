import '../database.dart';

class UserPaymentTokensTable extends SupabaseTable<UserPaymentTokensRow> {
  @override
  String get tableName => 'user_payment_tokens';

  @override
  UserPaymentTokensRow createRow(Map<String, dynamic> data) =>
      UserPaymentTokensRow(data);
}

class UserPaymentTokensRow extends SupabaseDataRow {
  UserPaymentTokensRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserPaymentTokensTable();

  String get id => getField<String>('id')!;
  set id(String value) => setField<String>('id', value);

  String get userUid => getField<String>('user_uid')!;
  set userUid(String value) => setField<String>('user_uid', value);

  String get creditCardToken => getField<String>('credit_card_token')!;
  set creditCardToken(String value) =>
      setField<String>('credit_card_token', value);

  String get last4 => getField<String>('last4')!;
  set last4(String value) => setField<String>('last4', value);

  String get brand => getField<String>('brand')!;
  set brand(String value) => setField<String>('brand', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
