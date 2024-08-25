// lib/data/repositories/location_repository_impl.dart

import 'package:geolocator/geolocator.dart';
import 'package:kairos/core/constants.dart';
import '../models/location_model.dart';
import '../../domain/entities/location.dart';
import '../../domain/repositories/location_repository.dart';

/// Implementation of the LocationRepository interface.
/// It fetches the current location using Geolocator and converts it to a domain entity.
class LocationRepositoryImpl implements LocationRepository {
  @override
  Future<Location> getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );

    // Create and return a LocationModel instance
    final locationModel = LocationModel(
      (b) => b
        ..name = defaultLocationName
        ..latitude = position.latitude
        ..longitude = position.longitude,
    );

    return Location(
      name: locationModel.name,
      latitude: locationModel.latitude,
      longitude: locationModel.longitude,
    );
  }
}
