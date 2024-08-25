// lib/data/repositories/weather_repository_impl.dart

import 'package:intl/intl.dart';

import '../../domain/entities/weather.dart';
import '../../domain/repositories/weather_repository.dart';
import '../datasources/weather_remote_data_source.dart';

/// Implementation of the WeatherRepository interface.
/// It fetches weather data from the remote data source and converts it to domain entities.
class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherRemoteDataSource remoteDataSource;

  WeatherRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<Weather>> getWeather(double latitude, double longitude) async {
    final weatherModels = await remoteDataSource.getWeather(latitude, longitude);
    final DateFormat formatter = DateFormat('E');
    return weatherModels.map((model) => Weather(
      dayOfWeek: formatter.format(DateTime.parse(model.dayOfWeek!)),
      temperature: model.main.temperature! ,
      description: model.weather[0].description, 
      locationName: '',
      date: DateTime.parse(model.dayOfWeek!)
    )).toList();
  }
}
