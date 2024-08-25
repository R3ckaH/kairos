// lib/domain/entities/weather.dart

class Weather  {
  final String? dayOfWeek;
  final double? temperature;
  final String? description;
  final String? locationName; // New field for location name
  final DateTime? date;

  Weather({
    required this.dayOfWeek,
    required this.temperature,
    required this.description,
    required this.locationName, // Initialize the location name
    required this.date,
  });

  Weather copyWith({
    String? dayOfWeek,
    double? temperature,
    String? description,
    String? locationName,
    DateTime? date
  }) {
    return Weather(
      dayOfWeek: dayOfWeek ?? this.dayOfWeek,
      temperature: temperature ?? this.temperature,
      description: description ?? this.description,
      locationName: locationName ?? this.locationName,
      date: date ?? this.date,
    );
  }

  List<Object?> get props => [dayOfWeek, temperature, description, locationName];
}
