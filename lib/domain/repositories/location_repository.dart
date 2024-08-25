// lib/domain/repositories/location_repository.dart

import '../entities/location.dart';

/// Interface for location repository.
/// It defines a contract for fetching location data.
abstract class LocationRepository {
  Future<Location> getCurrentLocation();
}
