import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = FlutterSecureStorage();
    await _safeInitAsync(() async {
      _firstTime = await secureStorage.getBool('ff_firstTime') ?? _firstTime;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  List<String> _apires = [];
  List<String> get apires => _apires;
  set apires(List<String> value) {
    _apires = value;
  }

  void addToApires(String value) {
    apires.add(value);
  }

  void removeFromApires(String value) {
    apires.remove(value);
  }

  void removeAtIndexFromApires(int index) {
    apires.removeAt(index);
  }

  void updateApiresAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    apires[index] = updateFn(_apires[index]);
  }

  void insertAtIndexInApires(int index, String value) {
    apires.insert(index, value);
  }

  String _devloc = '';
  String get devloc => _devloc;
  set devloc(String value) {
    _devloc = value;
  }

  double _devlat = 0.0;
  double get devlat => _devlat;
  set devlat(double value) {
    _devlat = value;
  }

  double _devlong = 0.0;
  double get devlong => _devlong;
  set devlong(double value) {
    _devlong = value;
  }

  bool _firstTime = true;
  bool get firstTime => _firstTime;
  set firstTime(bool value) {
    _firstTime = value;
    secureStorage.setBool('ff_firstTime', value);
  }

  void deleteFirstTime() {
    secureStorage.delete(key: 'ff_firstTime');
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: ListToCsvConverter().convert([value]));
}
