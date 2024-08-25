// lib/domain/usecases/get_weather.dart

import '../entities/weather.dart';
import '../repositories/weather_repository.dart';
import '../repositories/location_repository.dart';

/// Use case for fetching weather data based on the current location.
class GetWeather {
  final WeatherRepository weatherRepository;
  final LocationRepository locationRepository;

  GetWeather({
    required this.weatherRepository,
    required this.locationRepository,
  });

  /// Fetches the weather data for the current location.
  Future<List<Weather>> call() async {
    final location = await locationRepository.getCurrentLocation();
    return weatherRepository.getWeather(location.latitude, location.longitude);
  }
}
