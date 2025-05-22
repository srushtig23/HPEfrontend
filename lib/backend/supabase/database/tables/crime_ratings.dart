import '../database.dart';

class CrimeRatingsTable extends SupabaseTable<CrimeRatingsRow> {
  @override
  String get tableName => 'CrimeRatings';

  @override
  CrimeRatingsRow createRow(Map<String, dynamic> data) => CrimeRatingsRow(data);
}

class CrimeRatingsRow extends SupabaseDataRow {
  CrimeRatingsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CrimeRatingsTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get crime => getField<String>('crime');
  set crime(String? value) => setField<String>('crime', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);
}
