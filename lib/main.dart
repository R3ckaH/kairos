// lib/main.dart

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'presentation/bloc/weather_bloc.dart';
import 'data/repositories/weather_repository_impl.dart';
import 'data/repositories/location_repository_impl.dart';
import 'data/datasources/weather_remote_data_source.dart';
import 'domain/usecases/get_weather.dart';
import 'presentation/pages/weather_page.dart';
import 'package:dio/dio.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize HydratedBloc with the storage directory.
  final storage = await HydratedStorage.build(
    storageDirectory: await getApplicationDocumentsDirectory(),
  );

  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: kIsWeb
        ? HydratedStorage.webStorageDirectory
        : await getTemporaryDirectory(),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: MaterialApp(
        title: 'Flutter Weather App',
        home: BlocProvider(
          create: (_) => WeatherBloc(
            GetWeather(
              weatherRepository: WeatherRepositoryImpl(
                WeatherRemoteDataSource(Dio()),
              ),
              locationRepository: LocationRepositoryImpl(),
            ),
          ),
          child: const WeatherPage(),
        ),
      ),
    );
  }
}
