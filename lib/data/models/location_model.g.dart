// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LocationModel> _$locationModelSerializer =
    new _$LocationModelSerializer();

class _$LocationModelSerializer implements StructuredSerializer<LocationModel> {
  @override
  final Iterable<Type> types = const [LocationModel, _$LocationModel];
  @override
  final String wireName = 'LocationModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, LocationModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'latitude',
      serializers.serialize(object.latitude,
          specifiedType: const FullType(double)),
      'longitude',
      serializers.serialize(object.longitude,
          specifiedType: const FullType(double)),
    ];

    return result;
  }

  @override
  LocationModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LocationModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'latitude':
          result.latitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
        case 'longitude':
          result.longitude = serializers.deserialize(value,
              specifiedType: const FullType(double))! as double;
          break;
      }
    }

    return result.build();
  }
}

class _$LocationModel extends LocationModel {
  @override
  final String name;
  @override
  final double latitude;
  @override
  final double longitude;

  factory _$LocationModel([void Function(LocationModelBuilder)? updates]) =>
      (new LocationModelBuilder()..update(updates))._build();

  _$LocationModel._(
      {required this.name, required this.latitude, required this.longitude})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(name, r'LocationModel', 'name');
    BuiltValueNullFieldError.checkNotNull(
        latitude, r'LocationModel', 'latitude');
    BuiltValueNullFieldError.checkNotNull(
        longitude, r'LocationModel', 'longitude');
  }

  @override
  LocationModel rebuild(void Function(LocationModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LocationModelBuilder toBuilder() => new LocationModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LocationModel &&
        name == other.name &&
        latitude == other.latitude &&
        longitude == other.longitude;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, latitude.hashCode);
    _$hash = $jc(_$hash, longitude.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LocationModel')
          ..add('name', name)
          ..add('latitude', latitude)
          ..add('longitude', longitude))
        .toString();
  }
}

class LocationModelBuilder
    implements Builder<LocationModel, LocationModelBuilder> {
  _$LocationModel? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  double? _latitude;
  double? get latitude => _$this._latitude;
  set latitude(double? latitude) => _$this._latitude = latitude;

  double? _longitude;
  double? get longitude => _$this._longitude;
  set longitude(double? longitude) => _$this._longitude = longitude;

  LocationModelBuilder();

  LocationModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _latitude = $v.latitude;
      _longitude = $v.longitude;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LocationModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LocationModel;
  }

  @override
  void update(void Function(LocationModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LocationModel build() => _build();

  _$LocationModel _build() {
    final _$result = _$v ??
        new _$LocationModel._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'LocationModel', 'name'),
            latitude: BuiltValueNullFieldError.checkNotNull(
                latitude, r'LocationModel', 'latitude'),
            longitude: BuiltValueNullFieldError.checkNotNull(
                longitude, r'LocationModel', 'longitude'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
