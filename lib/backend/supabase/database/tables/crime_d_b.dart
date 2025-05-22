import '../database.dart';

class CrimeDBTable extends SupabaseTable<CrimeDBRow> {
  @override
  String get tableName => 'CrimeDB';

  @override
  CrimeDBRow createRow(Map<String, dynamic> data) => CrimeDBRow(data);
}

class CrimeDBRow extends SupabaseDataRow {
  CrimeDBRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CrimeDBTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get userId => getField<String>('user_id');
  set userId(String? value) => setField<String>('user_id', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get category => getField<String>('category');
  set category(String? value) => setField<String>('category', value);

  double? get rating => getField<double>('rating');
  set rating(double? value) => setField<double>('rating', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  double? get latt => getField<double>('latt');
  set latt(double? value) => setField<double>('latt', value);

  double? get long => getField<double>('long');
  set long(double? value) => setField<double>('long', value);

  List<String> get crimes => getListField<String>('crimes');
  set crimes(List<String>? value) => setListField<String>('crimes', value);
}
