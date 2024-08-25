// lib/data/models/serializers.dart

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'weather_model.dart';
import 'location_model.dart';

part 'serializers.g.dart';

/// Serializers for converting models to and from JSON.
@SerializersFor([
  WeatherModel,
  LocationModel,
])
final Serializers serializers = (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
