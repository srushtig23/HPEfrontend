import '../database.dart';

class SampleTableTable extends SupabaseTable<SampleTableRow> {
  @override
  String get tableName => 'SampleTable';

  @override
  SampleTableRow createRow(Map<String, dynamic> data) => SampleTableRow(data);
}

class SampleTableRow extends SupabaseDataRow {
  SampleTableRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => SampleTableTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);
}
