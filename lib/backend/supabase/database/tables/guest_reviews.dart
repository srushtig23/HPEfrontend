import '../database.dart';

class GuestReviewsTable extends SupabaseTable<GuestReviewsRow> {
  @override
  String get tableName => 'GuestReviews';

  @override
  GuestReviewsRow createRow(Map<String, dynamic> data) => GuestReviewsRow(data);
}

class GuestReviewsRow extends SupabaseDataRow {
  GuestReviewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GuestReviewsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  double? get latt => getField<double>('latt');
  set latt(double? value) => setField<double>('latt', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);
}
