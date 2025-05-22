import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
