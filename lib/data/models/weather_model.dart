// lib/data/models/weather_model.dart

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:kairos/domain/entities/weather.dart';
import 'serializers.dart';

part 'weather_model.g.dart';

/// Data model for weather information.
/// It includes the day of the week, temperature, and a description of the weather.
abstract class WeatherModel implements Built<WeatherModel, WeatherModelBuilder> {

  @BuiltValueField(wireName: 'dt')
  double? get temperature;

  @BuiltValueField(wireName: 'main')
  MainModel get main;

  @BuiltValueField(wireName: 'weather')
  BuiltList<WeatherDescriptionModel> get weather;

  @BuiltValueField(wireName: 'visibility')
  int? get visibility;

  @BuiltValueField(wireName: 'pop')
  double? get pop;

  @BuiltValueField(wireName: 'wind')
  WindModel get winds;

  @BuiltValueField(wireName: 'rain')
  RainModel get rains;

  @BuiltValueField(wireName: 'sys')
  SysModel get sys;

  @BuiltValueField(wireName: 'clouds')
  CloudModel get clouds;

  @BuiltValueField(wireName: 'dt_txt')
  String? get dayOfWeek;



  WeatherModel._();
  factory WeatherModel([void Function(WeatherModelBuilder) updates]) = _$WeatherModel;

 /// Converts WeatherModel to Weather domain entity.
  Weather toEntity() {
    return Weather(
      dayOfWeek: dayOfWeek,
      temperature: temperature,
      description: '', 
      locationName: '',
      date: DateTime.parse(dayOfWeek!),
    );
  }

  /// Serialize WeatherModel to JSON.
  Map<String, dynamic> toJson() {
    return serializers.serializeWith(WeatherModel.serializer, this) as Map<String, dynamic>;
  }

  /// Deserialize JSON to WeatherModel.
  static WeatherModel fromJson(Map<String, dynamic> json) {
    return serializers.deserializeWith(WeatherModel.serializer, json)!;
  }

  static Serializer<WeatherModel> get serializer => _$weatherModelSerializer;
}

abstract class WeatherDescriptionModel implements Built<WeatherDescriptionModel, WeatherDescriptionModelBuilder> {
  String get description;

  WeatherDescriptionModel._();
  factory WeatherDescriptionModel([void Function(WeatherDescriptionModelBuilder) updates]) = _$WeatherDescriptionModel;

  static WeatherDescriptionModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(WeatherDescriptionModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(WeatherDescriptionModel.serializer, this) as Map<String, dynamic>;

  static Serializer<WeatherDescriptionModel> get serializer => _$weatherDescriptionModelSerializer;
}

abstract class MainModel implements Built<MainModel, MainModelBuilder> {
  @BuiltValueField(wireName: 'temp')
  double? get temperature;

  MainModel._();
  factory MainModel([void Function(MainModelBuilder) updates]) = _$MainModel;

  static MainModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(MainModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(MainModel.serializer, this) as Map<String, dynamic>;

  static Serializer<MainModel> get serializer => _$mainModelSerializer;
}

abstract class RainModel implements Built<RainModel, RainModelBuilder> {
  RainModel._();
  factory RainModel([void Function(RainModelBuilder) updates]) = _$RainModel;

  static RainModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(RainModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(RainModel.serializer, this) as Map<String, dynamic>;

  static Serializer<RainModel> get serializer => _$rainModelSerializer;
}

abstract class WindModel implements Built<WindModel, WindModelBuilder> {

  WindModel._();
  factory WindModel([void Function(WindModelBuilder) updates]) = _$WindModel;

  static WindModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(WindModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(WindModel.serializer, this) as Map<String, dynamic>;

  static Serializer<WindModel> get serializer => _$windModelSerializer;
}

abstract class SysModel implements Built<SysModel, SysModelBuilder> {

  SysModel._();
  factory SysModel([void Function(SysModelBuilder) updates]) = _$SysModel;

  static SysModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(SysModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(SysModel.serializer, this) as Map<String, dynamic>;

  static Serializer<SysModel> get serializer => _$sysModelSerializer;
}

abstract class CloudModel implements Built<CloudModel, CloudModelBuilder> {

  CloudModel._();
  factory CloudModel([void Function(CloudModelBuilder) updates]) = _$CloudModel;

  static CloudModel fromJson(Map<String, dynamic> json) =>
      serializers.deserializeWith(CloudModel.serializer, json)!;

  Map<String, dynamic> toJson() => serializers.serializeWith(CloudModel.serializer, this) as Map<String, dynamic>;

  static Serializer<CloudModel> get serializer => _$cloudModelSerializer;
}