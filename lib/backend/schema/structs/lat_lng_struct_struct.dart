// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LatLngStructStruct extends BaseStruct {
  LatLngStructStruct({
    double? latitude,
    double? longitude,
  })  : _latitude = latitude,
        _longitude = longitude;

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

  static LatLngStructStruct fromMap(Map<String, dynamic> data) =>
      LatLngStructStruct(
        latitude: castToType<double>(data['latitude']),
        longitude: castToType<double>(data['longitude']),
      );

  static LatLngStructStruct? maybeFromMap(dynamic data) => data is Map
      ? LatLngStructStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'latitude': _latitude,
        'longitude': _longitude,
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
      );

  @override
  String toString() => 'LatLngStructStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is LatLngStructStruct &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode => const ListEquality().hash([latitude, longitude]);
}

LatLngStructStruct createLatLngStructStruct({
  double? latitude,
  double? longitude,
}) =>
    LatLngStructStruct(
      latitude: latitude,
      longitude: longitude,
    );
