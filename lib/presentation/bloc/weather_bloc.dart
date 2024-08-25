// lib/presentation/bloc/weather_bloc.dart

import 'dart:async';

import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'weather_event.dart';
import 'weather_state.dart';
import '../../domain/usecases/get_weather.dart';
import '../../data/models/weather_model.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

/// BLoC for managing the weather state.
/// It uses hydrated_bloc for state persistence across app restarts.
class WeatherBloc extends HydratedBloc<WeatherEvent, WeatherState> {
  final GetWeather getWeather;

  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  bool isConnected = true;

  WeatherBloc(this.getWeather) : super(WeatherInitial()) {
    // Register the event handler for FetchWeather
    on<FetchWeather>(_onFetchWeather);

        // Subscribe to connectivity changes
    _connectivitySubscription = Connectivity().onConnectivityChanged.listen((result) {
      isConnected = result != ConnectivityResult.none;
      if (isConnected && state is WeatherLoaded) {
        add(FetchWeather());
      }
    });
  }

  /// Event handler for FetchWeather
  Future<void> _onFetchWeather(FetchWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());

// Check network connectivity
      var connectivityResult = await Connectivity().checkConnectivity();
      bool isConnected = connectivityResult != ConnectivityResult.none;

    if (isConnected) {
      try {
        final weather = await getWeather();
        emit(WeatherLoaded(weather));
      } catch (e) {
        emit(WeatherError(e.toString()));
      }
    }else{
      if (state is WeatherLoaded) {
        emit(state);  // Continue using the cached state if offline
      } else {
        emit(const WeatherError("No internet connection and no cached data available"));
      }
    }

  }

  @override
  WeatherState? fromJson(Map<String, dynamic> json) {
    // Deserialize weather state from JSON
    try {
      final weatherList = (json['weather'] as List)
          .map((weatherJson) => WeatherModel.fromJson(weatherJson as Map<String, dynamic>).toEntity())
          .toList();
      return WeatherLoaded(weatherList);
    } catch (_) {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(WeatherState state) {
    // Serialize weather state to JSON
    if (state is WeatherLoaded) {
      return {
        'weather': state.weather.map((weather) => WeatherModel(
            (b) => b
              ..dayOfWeek = weather.dayOfWeek
              ..temperature = weather.temperature
              ..dayOfWeek = weather.description
          ).toJson()).toList(),
      };
    }
    return null;
  }

    @override
  Future<void> close() {
    _connectivitySubscription.cancel(); // Cancel the subscription when bloc is closed
    return super.close();
  }
}
