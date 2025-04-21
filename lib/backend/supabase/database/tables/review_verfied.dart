import '../database.dart';

class ReviewVerfiedTable extends SupabaseTable<ReviewVerfiedRow> {
  @override
  String get tableName => 'ReviewVerfied';

  @override
  ReviewVerfiedRow createRow(Map<String, dynamic> data) =>
      ReviewVerfiedRow(data);
}

class ReviewVerfiedRow extends SupabaseDataRow {
  ReviewVerfiedRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ReviewVerfiedTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get latt => getField<double>('latt');
  set latt(double? value) => setField<double>('latt', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);
}
