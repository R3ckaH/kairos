// lib/domain/repositories/weather_repository.dart

import '../entities/weather.dart';

/// Interface for weather repository.
/// It defines a contract for fetching weather data.
abstract class WeatherRepository {
  Future<List<Weather>> getWeather(double latitude, double longitude);
}
