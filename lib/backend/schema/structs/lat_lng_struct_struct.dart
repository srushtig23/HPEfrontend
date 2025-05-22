// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LatLngStructStruct extends BaseStruct {
  LatLngStructStruct({
    double? latitude,
    double? longitude,
    double? selectedLat,
    double? selectedLng,
  })  : _latitude = latitude,
        _longitude = longitude,
        _selectedLat = selectedLat,
        _selectedLng = selectedLng;

  // "latitude" field.
  double? _latitude;
  double get latitude => _latitude ?? 1.2222;
  set latitude(double? val) => _latitude = val;

  void incrementLatitude(double amount) => latitude = latitude + amount;

  bool hasLatitude() => _latitude != null;

  // "longitude" field.
  double? _longitude;
  double get longitude => _longitude ?? 3.555;
  set longitude(double? val) => _longitude = val;

  void incrementLongitude(double amount) => longitude = longitude + amount;

  bool hasLongitude() => _longitude != null;

  // "selectedLat" field.
  double? _selectedLat;
  double get selectedLat => _selectedLat ?? 0.0;
  set selectedLat(double? val) => _selectedLat = val;

  void incrementSelectedLat(double amount) =>
      selectedLat = selectedLat + amount;

  bool hasSelectedLat() => _selectedLat != null;

  // "selectedLng" field.
  double? _selectedLng;
  double get selectedLng => _selectedLng ?? 0.0;
  set selectedLng(double? val) => _selectedLng = val;

  void incrementSelectedLng(double amount) =>
      selectedLng = selectedLng + amount;

  bool hasSelectedLng() => _selectedLng != null;

  static LatLngStructStruct fromMap(Map<String, dynamic> data) =>
      LatLngStructStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
        selectedLat: castToType<double>(data['selectedLat']),
        selectedLng: castToType<double>(data['selectedLng']),
      );

  static LatLngStructStruct? maybeFromMap(dynamic data) => data is Map
      ? LatLngStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
        'selectedLat': _selectedLat,
        'selectedLng': _selectedLng,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'latitude': serializeParam(
          _latitude,
          ParamType.double,
        ),
        'longitude': serializeParam(
          _longitude,
          ParamType.double,
        ),
        'selectedLat': serializeParam(
          _selectedLat,
          ParamType.double,
        ),
        'selectedLng': serializeParam(
          _selectedLng,
          ParamType.double,
        ),
      }.withoutNulls;

  static LatLngStructStruct fromSerializableMap(Map<String, dynamic> data) =>
      LatLngStructStruct(
        latitude: deserializeParam(
          data['latitude'],
          ParamType.double,
          false,
        ),
        longitude: deserializeParam(
          data['longitude'],
          ParamType.double,
          false,
        ),
        selectedLat: deserializeParam(
          data['selectedLat'],
          ParamType.double,
          false,
        ),
        selectedLng: deserializeParam(
          data['selectedLng'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'LatLngStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LatLngStructStruct &&
        latitude == other.latitude &&
        longitude == other.longitude &&
        selectedLat == other.selectedLat &&
        selectedLng == other.selectedLng;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([latitude, longitude, selectedLat, selectedLng]);
}

LatLngStructStruct createLatLngStructStruct({
  double? latitude,
  double? longitude,
  double? selectedLat,
  double? selectedLng,
}) =>
    LatLngStructStruct(
      latitude: latitude,
      longitude: longitude,
      selectedLat: selectedLat,
      selectedLng: selectedLng,
    );
