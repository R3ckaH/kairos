// lib/presentation/bloc/weather_event.dart

/// Events for WeatherBloc.
/// Currently, only one event is defined for fetching weather data.
abstract class WeatherEvent {
  const WeatherEvent();

  List<Object> get props => [];
}

/// Event for fetching weather data.
class FetchWeather extends WeatherEvent {}
