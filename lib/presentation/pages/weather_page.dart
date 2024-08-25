// lib/presentation/pages/weather_page.dart

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import '../bloc/weather_bloc.dart';
import '../bloc/weather_event.dart';
import '../bloc/weather_state.dart';

/// UI page for displaying weather information.
class WeatherPage extends StatelessWidget {
  const WeatherPage({super.key});

  

  @override
  Widget build(BuildContext context) {
    final DateFormat formatter = DateFormat('MMMd');
    final DateFormat timeFormatter = DateFormat('jm');
    return Scaffold(
      body: BlocBuilder<WeatherBloc, WeatherState>(
        builder: (context, state) {
          if (state is WeatherInitial) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sunandcloud.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: const Center(
                child: Text('Please fetch weather data'),
              ),
            );
          } else if (state is WeatherLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is WeatherLoaded) {
            return Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("images/sunandcloud.jpeg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                children: <Widget>[
                  Flexible(
                      flex: 1,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 50,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(20, 5, 0, 5),
                            child: Row(
                              children: [
                                Image.asset(
                                  'images/suncloudstorm.jpg',
                                  height: 100,
                                  width: 100,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(20, 5, 10, 5),
                                  child: Text(
                                    'KAIROS',
                                    style: TextStyle(
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      )),
                  Flexible(
                    flex: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.black45,
                            style: BorderStyle.solid,
                            width: 1.0,
                          ),
                          color: Colors.black45,
                          borderRadius: BorderRadius.circular(30.0),
                        ),
                        child: ListView.builder(
                          itemCount: state.weather.length,
                          itemBuilder: (context, index) {
                            final weather = state.weather[index];
                            return ListTile(
                              leading: weather.description == 'clear sky' ? Icon(Icons.sunny, size: 40,) : Icon(Icons.cloud, size: 40,),
                              iconColor: Colors.amber,
                              contentPadding: EdgeInsets.all(10),
                              textColor: const Color.fromARGB(255, 239, 149, 24),
                              title: Text('${weather.dayOfWeek!} ${formatter.format(weather.date!)} ${timeFormatter.format(weather.date!)}', style: TextStyle(fontSize: 25.0),),
                              subtitle: Text(
                                  '${weather.temperature}°C - ${weather.description}', style: TextStyle(color: Colors.white),),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 80,)
                ],
              ),
            );
          } else if (state is WeatherError) {
            return Center(
              child: Text('Failed to fetch weather data: ${state.message}'),
            );
          } else {
            return Container();
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<WeatherBloc>().add(FetchWeather());
        },
        child: const Icon(Icons.refresh),
      ),
    );
  }

  Widget getWeatherIcon(String description){
    Icon icon = Icon(Icons.sunny);
    switch (description.trim()) {
      case 'few clouds':
        icon = Icon(Icons.cloud);
        break;
      case 'scattered clouds':
        icon = Icon(Icons.cloud);
        break;
      case 'broken clouds':
        icon = Icon(Icons.cloud);
        break;
      case 'shower clouds':
        icon = Icon(Icons.cloudy_snowing);
        break;
      case 'shower rain':
        icon = Icon(Icons.water_drop_rounded);
        break;    
      default:
    }

    return icon;
  }
}
