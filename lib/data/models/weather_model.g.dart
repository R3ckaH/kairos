// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<WeatherModel> _$weatherModelSerializer =
    new _$WeatherModelSerializer();
Serializer<WeatherDescriptionModel> _$weatherDescriptionModelSerializer =
    new _$WeatherDescriptionModelSerializer();
Serializer<MainModel> _$mainModelSerializer = new _$MainModelSerializer();
Serializer<RainModel> _$rainModelSerializer = new _$RainModelSerializer();
Serializer<WindModel> _$windModelSerializer = new _$WindModelSerializer();
Serializer<SysModel> _$sysModelSerializer = new _$SysModelSerializer();
Serializer<CloudModel> _$cloudModelSerializer = new _$CloudModelSerializer();

class _$WeatherModelSerializer implements StructuredSerializer<WeatherModel> {
  @override
  final Iterable<Type> types = const [WeatherModel, _$WeatherModel];
  @override
  final String wireName = 'WeatherModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WeatherModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'main',
      serializers.serialize(object.main,
          specifiedType: const FullType(MainModel)),
      'weather',
      serializers.serialize(object.weather,
          specifiedType: const FullType(
              BuiltList, const [const FullType(WeatherDescriptionModel)])),
      'wind',
      serializers.serialize(object.winds,
          specifiedType: const FullType(WindModel)),
      'rain',
      serializers.serialize(object.rains,
          specifiedType: const FullType(RainModel)),
      'sys',
      serializers.serialize(object.sys,
          specifiedType: const FullType(SysModel)),
      'clouds',
      serializers.serialize(object.clouds,
          specifiedType: const FullType(CloudModel)),
    ];
    Object? value;
    value = object.temperature;
    if (value != null) {
      result
        ..add('dt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.visibility;
    if (value != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.pop;
    if (value != null) {
      result
        ..add('pop')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    value = object.dayOfWeek;
    if (value != null) {
      result
        ..add('dt_txt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  WeatherModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'dt':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'main':
          result.main.replace(serializers.deserialize(value,
              specifiedType: const FullType(MainModel))! as MainModel);
          break;
        case 'weather':
          result.weather.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(WeatherDescriptionModel)
              ]))! as BuiltList<Object?>);
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'pop':
          result.pop = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
        case 'wind':
          result.winds.replace(serializers.deserialize(value,
              specifiedType: const FullType(WindModel))! as WindModel);
          break;
        case 'rain':
          result.rains.replace(serializers.deserialize(value,
              specifiedType: const FullType(RainModel))! as RainModel);
          break;
        case 'sys':
          result.sys.replace(serializers.deserialize(value,
              specifiedType: const FullType(SysModel))! as SysModel);
          break;
        case 'clouds':
          result.clouds.replace(serializers.deserialize(value,
              specifiedType: const FullType(CloudModel))! as CloudModel);
          break;
        case 'dt_txt':
          result.dayOfWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$WeatherDescriptionModelSerializer
    implements StructuredSerializer<WeatherDescriptionModel> {
  @override
  final Iterable<Type> types = const [
    WeatherDescriptionModel,
    _$WeatherDescriptionModel
  ];
  @override
  final String wireName = 'WeatherDescriptionModel';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, WeatherDescriptionModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  WeatherDescriptionModel deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new WeatherDescriptionModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MainModelSerializer implements StructuredSerializer<MainModel> {
  @override
  final Iterable<Type> types = const [MainModel, _$MainModel];
  @override
  final String wireName = 'MainModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, MainModel object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.temperature;
    if (value != null) {
      result
        ..add('temp')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(double)));
    }
    return result;
  }

  @override
  MainModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MainModelBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'temp':
          result.temperature = serializers.deserialize(value,
              specifiedType: const FullType(double)) as double?;
          break;
      }
    }

    return result.build();
  }
}

class _$RainModelSerializer implements StructuredSerializer<RainModel> {
  @override
  final Iterable<Type> types = const [RainModel, _$RainModel];
  @override
  final String wireName = 'RainModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, RainModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  RainModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new RainModelBuilder().build();
  }
}

class _$WindModelSerializer implements StructuredSerializer<WindModel> {
  @override
  final Iterable<Type> types = const [WindModel, _$WindModel];
  @override
  final String wireName = 'WindModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, WindModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  WindModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new WindModelBuilder().build();
  }
}

class _$SysModelSerializer implements StructuredSerializer<SysModel> {
  @override
  final Iterable<Type> types = const [SysModel, _$SysModel];
  @override
  final String wireName = 'SysModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, SysModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  SysModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new SysModelBuilder().build();
  }
}

class _$CloudModelSerializer implements StructuredSerializer<CloudModel> {
  @override
  final Iterable<Type> types = const [CloudModel, _$CloudModel];
  @override
  final String wireName = 'CloudModel';

  @override
  Iterable<Object?> serialize(Serializers serializers, CloudModel object,
      {FullType specifiedType = FullType.unspecified}) {
    return <Object?>[];
  }

  @override
  CloudModel deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    return new CloudModelBuilder().build();
  }
}

class _$WeatherModel extends WeatherModel {
  @override
  final double? temperature;
  @override
  final MainModel main;
  @override
  final BuiltList<WeatherDescriptionModel> weather;
  @override
  final int? visibility;
  @override
  final double? pop;
  @override
  final WindModel winds;
  @override
  final RainModel rains;
  @override
  final SysModel sys;
  @override
  final CloudModel clouds;
  @override
  final String? dayOfWeek;

  factory _$WeatherModel([void Function(WeatherModelBuilder)? updates]) =>
      (new WeatherModelBuilder()..update(updates))._build();

  _$WeatherModel._(
      {this.temperature,
      required this.main,
      required this.weather,
      this.visibility,
      this.pop,
      required this.winds,
      required this.rains,
      required this.sys,
      required this.clouds,
      this.dayOfWeek})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(main, r'WeatherModel', 'main');
    BuiltValueNullFieldError.checkNotNull(weather, r'WeatherModel', 'weather');
    BuiltValueNullFieldError.checkNotNull(winds, r'WeatherModel', 'winds');
    BuiltValueNullFieldError.checkNotNull(rains, r'WeatherModel', 'rains');
    BuiltValueNullFieldError.checkNotNull(sys, r'WeatherModel', 'sys');
    BuiltValueNullFieldError.checkNotNull(clouds, r'WeatherModel', 'clouds');
  }

  @override
  WeatherModel rebuild(void Function(WeatherModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherModelBuilder toBuilder() => new WeatherModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherModel &&
        temperature == other.temperature &&
        main == other.main &&
        weather == other.weather &&
        visibility == other.visibility &&
        pop == other.pop &&
        winds == other.winds &&
        rains == other.rains &&
        sys == other.sys &&
        clouds == other.clouds &&
        dayOfWeek == other.dayOfWeek;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jc(_$hash, main.hashCode);
    _$hash = $jc(_$hash, weather.hashCode);
    _$hash = $jc(_$hash, visibility.hashCode);
    _$hash = $jc(_$hash, pop.hashCode);
    _$hash = $jc(_$hash, winds.hashCode);
    _$hash = $jc(_$hash, rains.hashCode);
    _$hash = $jc(_$hash, sys.hashCode);
    _$hash = $jc(_$hash, clouds.hashCode);
    _$hash = $jc(_$hash, dayOfWeek.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherModel')
          ..add('temperature', temperature)
          ..add('main', main)
          ..add('weather', weather)
          ..add('visibility', visibility)
          ..add('pop', pop)
          ..add('winds', winds)
          ..add('rains', rains)
          ..add('sys', sys)
          ..add('clouds', clouds)
          ..add('dayOfWeek', dayOfWeek))
        .toString();
  }
}

class WeatherModelBuilder
    implements Builder<WeatherModel, WeatherModelBuilder> {
  _$WeatherModel? _$v;

  double? _temperature;
  double? get temperature => _$this._temperature;
  set temperature(double? temperature) => _$this._temperature = temperature;

  MainModelBuilder? _main;
  MainModelBuilder get main => _$this._main ??= new MainModelBuilder();
  set main(MainModelBuilder? main) => _$this._main = main;

  ListBuilder<WeatherDescriptionModel>? _weather;
  ListBuilder<WeatherDescriptionModel> get weather =>
      _$this._weather ??= new ListBuilder<WeatherDescriptionModel>();
  set weather(ListBuilder<WeatherDescriptionModel>? weather) =>
      _$this._weather = weather;

  int? _visibility;
  int? get visibility => _$this._visibility;
  set visibility(int? visibility) => _$this._visibility = visibility;

  double? _pop;
  double? get pop => _$this._pop;
  set pop(double? pop) => _$this._pop = pop;

  WindModelBuilder? _winds;
  WindModelBuilder get winds => _$this._winds ??= new WindModelBuilder();
  set winds(WindModelBuilder? winds) => _$this._winds = winds;

  RainModelBuilder? _rains;
  RainModelBuilder get rains => _$this._rains ??= new RainModelBuilder();
  set rains(RainModelBuilder? rains) => _$this._rains = rains;

  SysModelBuilder? _sys;
  SysModelBuilder get sys => _$this._sys ??= new SysModelBuilder();
  set sys(SysModelBuilder? sys) => _$this._sys = sys;

  CloudModelBuilder? _clouds;
  CloudModelBuilder get clouds => _$this._clouds ??= new CloudModelBuilder();
  set clouds(CloudModelBuilder? clouds) => _$this._clouds = clouds;

  String? _dayOfWeek;
  String? get dayOfWeek => _$this._dayOfWeek;
  set dayOfWeek(String? dayOfWeek) => _$this._dayOfWeek = dayOfWeek;

  WeatherModelBuilder();

  WeatherModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temperature = $v.temperature;
      _main = $v.main.toBuilder();
      _weather = $v.weather.toBuilder();
      _visibility = $v.visibility;
      _pop = $v.pop;
      _winds = $v.winds.toBuilder();
      _rains = $v.rains.toBuilder();
      _sys = $v.sys.toBuilder();
      _clouds = $v.clouds.toBuilder();
      _dayOfWeek = $v.dayOfWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherModel;
  }

  @override
  void update(void Function(WeatherModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherModel build() => _build();

  _$WeatherModel _build() {
    _$WeatherModel _$result;
    try {
      _$result = _$v ??
          new _$WeatherModel._(
              temperature: temperature,
              main: main.build(),
              weather: weather.build(),
              visibility: visibility,
              pop: pop,
              winds: winds.build(),
              rains: rains.build(),
              sys: sys.build(),
              clouds: clouds.build(),
              dayOfWeek: dayOfWeek);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'main';
        main.build();
        _$failedField = 'weather';
        weather.build();

        _$failedField = 'winds';
        winds.build();
        _$failedField = 'rains';
        rains.build();
        _$failedField = 'sys';
        sys.build();
        _$failedField = 'clouds';
        clouds.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'WeatherModel', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$WeatherDescriptionModel extends WeatherDescriptionModel {
  @override
  final String description;

  factory _$WeatherDescriptionModel(
          [void Function(WeatherDescriptionModelBuilder)? updates]) =>
      (new WeatherDescriptionModelBuilder()..update(updates))._build();

  _$WeatherDescriptionModel._({required this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        description, r'WeatherDescriptionModel', 'description');
  }

  @override
  WeatherDescriptionModel rebuild(
          void Function(WeatherDescriptionModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WeatherDescriptionModelBuilder toBuilder() =>
      new WeatherDescriptionModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WeatherDescriptionModel && description == other.description;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, description.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WeatherDescriptionModel')
          ..add('description', description))
        .toString();
  }
}

class WeatherDescriptionModelBuilder
    implements
        Builder<WeatherDescriptionModel, WeatherDescriptionModelBuilder> {
  _$WeatherDescriptionModel? _$v;

  String? _description;
  String? get description => _$this._description;
  set description(String? description) => _$this._description = description;

  WeatherDescriptionModelBuilder();

  WeatherDescriptionModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WeatherDescriptionModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WeatherDescriptionModel;
  }

  @override
  void update(void Function(WeatherDescriptionModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WeatherDescriptionModel build() => _build();

  _$WeatherDescriptionModel _build() {
    final _$result = _$v ??
        new _$WeatherDescriptionModel._(
            description: BuiltValueNullFieldError.checkNotNull(
                description, r'WeatherDescriptionModel', 'description'));
    replace(_$result);
    return _$result;
  }
}

class _$MainModel extends MainModel {
  @override
  final double? temperature;

  factory _$MainModel([void Function(MainModelBuilder)? updates]) =>
      (new MainModelBuilder()..update(updates))._build();

  _$MainModel._({this.temperature}) : super._();

  @override
  MainModel rebuild(void Function(MainModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MainModelBuilder toBuilder() => new MainModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MainModel && temperature == other.temperature;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, temperature.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'MainModel')
          ..add('temperature', temperature))
        .toString();
  }
}

class MainModelBuilder implements Builder<MainModel, MainModelBuilder> {
  _$MainModel? _$v;

  double? _temperature;
  double? get temperature => _$this._temperature;
  set temperature(double? temperature) => _$this._temperature = temperature;

  MainModelBuilder();

  MainModelBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _temperature = $v.temperature;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MainModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$MainModel;
  }

  @override
  void update(void Function(MainModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  MainModel build() => _build();

  _$MainModel _build() {
    final _$result = _$v ?? new _$MainModel._(temperature: temperature);
    replace(_$result);
    return _$result;
  }
}

class _$RainModel extends RainModel {
  factory _$RainModel([void Function(RainModelBuilder)? updates]) =>
      (new RainModelBuilder()..update(updates))._build();

  _$RainModel._() : super._();

  @override
  RainModel rebuild(void Function(RainModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RainModelBuilder toBuilder() => new RainModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RainModel;
  }

  @override
  int get hashCode {
    return 201348929;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'RainModel').toString();
  }
}

class RainModelBuilder implements Builder<RainModel, RainModelBuilder> {
  _$RainModel? _$v;

  RainModelBuilder();

  @override
  void replace(RainModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RainModel;
  }

  @override
  void update(void Function(RainModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RainModel build() => _build();

  _$RainModel _build() {
    final _$result = _$v ?? new _$RainModel._();
    replace(_$result);
    return _$result;
  }
}

class _$WindModel extends WindModel {
  factory _$WindModel([void Function(WindModelBuilder)? updates]) =>
      (new WindModelBuilder()..update(updates))._build();

  _$WindModel._() : super._();

  @override
  WindModel rebuild(void Function(WindModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WindModelBuilder toBuilder() => new WindModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WindModel;
  }

  @override
  int get hashCode {
    return 78154074;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'WindModel').toString();
  }
}

class WindModelBuilder implements Builder<WindModel, WindModelBuilder> {
  _$WindModel? _$v;

  WindModelBuilder();

  @override
  void replace(WindModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$WindModel;
  }

  @override
  void update(void Function(WindModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WindModel build() => _build();

  _$WindModel _build() {
    final _$result = _$v ?? new _$WindModel._();
    replace(_$result);
    return _$result;
  }
}

class _$SysModel extends SysModel {
  factory _$SysModel([void Function(SysModelBuilder)? updates]) =>
      (new SysModelBuilder()..update(updates))._build();

  _$SysModel._() : super._();

  @override
  SysModel rebuild(void Function(SysModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SysModelBuilder toBuilder() => new SysModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SysModel;
  }

  @override
  int get hashCode {
    return 549277486;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'SysModel').toString();
  }
}

class SysModelBuilder implements Builder<SysModel, SysModelBuilder> {
  _$SysModel? _$v;

  SysModelBuilder();

  @override
  void replace(SysModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SysModel;
  }

  @override
  void update(void Function(SysModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SysModel build() => _build();

  _$SysModel _build() {
    final _$result = _$v ?? new _$SysModel._();
    replace(_$result);
    return _$result;
  }
}

class _$CloudModel extends CloudModel {
  factory _$CloudModel([void Function(CloudModelBuilder)? updates]) =>
      (new CloudModelBuilder()..update(updates))._build();

  _$CloudModel._() : super._();

  @override
  CloudModel rebuild(void Function(CloudModelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CloudModelBuilder toBuilder() => new CloudModelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CloudModel;
  }

  @override
  int get hashCode {
    return 997055577;
  }

  @override
  String toString() {
    return newBuiltValueToStringHelper(r'CloudModel').toString();
  }
}

class CloudModelBuilder implements Builder<CloudModel, CloudModelBuilder> {
  _$CloudModel? _$v;

  CloudModelBuilder();

  @override
  void replace(CloudModel other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CloudModel;
  }

  @override
  void update(void Function(CloudModelBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CloudModel build() => _build();

  _$CloudModel _build() {
    final _$result = _$v ?? new _$CloudModel._();
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
