// lib/data/models/location_model.dart

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'serializers.dart';

part 'location_model.g.dart';

/// Data model for location information.
/// It includes the name, latitude, and longitude of the location.
abstract class LocationModel implements Built<LocationModel, LocationModelBuilder> {
  String get name;
  double get latitude;
  double get longitude;

  LocationModel._();
  factory LocationModel([void Function(LocationModelBuilder) updates]) = _$LocationModel;

  /// Serialize LocationModel to JSON.
  Map<String, dynamic> toJson() {
    return serializers.serializeWith(LocationModel.serializer, this) as Map<String, dynamic>;
  }

  /// Deserialize JSON to LocationModel.
  static LocationModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(LocationModel.serializer, json)!;
  }

  static Serializer<LocationModel> get serializer => _$locationModelSerializer;
}
