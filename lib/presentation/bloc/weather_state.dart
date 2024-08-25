// lib/presentation/bloc/weather_state.dart

import '../../domain/entities/weather.dart';

/// States for WeatherBloc.
abstract class WeatherState {
  const WeatherState();

  List<Object> get props => [];
}

/// Initial state when the weather is not yet fetched.
class WeatherInitial extends WeatherState {}

/// Loading state when the weather data is being fetched.
class WeatherLoading extends WeatherState {}

/// Loaded state when the weather data is successfully fetched.
class WeatherLoaded extends WeatherState {
  final List<Weather> weather;

  const WeatherLoaded(this.weather);

  @override
  List<Object> get props => [weather];
}

/// Error state when there is an issue fetching weather data.
class WeatherError extends WeatherState {
  final String message;

  const WeatherError(this.message);

  @override
  List<Object> get props => [message];
}
