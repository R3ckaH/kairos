// lib/data/datasources/weather_remote_data_source.dart


import 'package:dio/dio.dart';
import '../models/weather_model.dart';
import '../../core/constants.dart';

/// Remote data source for fetching weather information from the API.
class WeatherRemoteDataSource {
  final Dio dio;

  WeatherRemoteDataSource(this.dio);

  /// Fetches weather data from the API based on the provided latitude and longitude.
  Future<List<WeatherModel>> getWeather(double latitude, double longitude) async {
    final url = '${baseUrl}forecast?units=metric&lat=$latitude&lon=$longitude&appid=$apiKey';
    final response = await dio.get(url);
    final weatherList = response.data['list'];

    // Deserialize the response using built_value.
    return (weatherList as List)
        .map((json) => WeatherModel.fromJson(json as Map<String, dynamic>))
        .toList();
  }
}