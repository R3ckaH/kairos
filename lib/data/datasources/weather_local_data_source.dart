// lib/data/datasources/weather_local_data_source.dart

import 'package:hive/hive.dart';
import '../../domain/entities/weather.dart';

// Local data source for caching weather data using Hive.
class WeatherLocalDataSource {
  final Box _box;

  WeatherLocalDataSource(this._box);

  // Cache the weather data locally.
  Future<void> cacheWeatherData(List<Weather> weatherData) async {
    await _box.put('weather', weatherData);
  }

  // Retrieve the last cached weather data.
  List<Weather>? getLastWeatherData() {
    return _box.get('weather')?.cast<Weather>();
  }
}
