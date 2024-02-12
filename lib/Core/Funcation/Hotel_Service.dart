import 'package:geolocator/geolocator.dart';

class Hotel {
  final String name;
  final double latitude;
  final double longitude;

  Hotel({
    required this.name,
    required this.latitude,
    required this.longitude,
  });
}

List<Hotel> hotels = [
  Hotel(name: 'Hotel A', latitude: 40.7128, longitude: -74.0060), // Example hotel
  // Add more hotels with their respective locations
];

Future<List<String>> getNearestHotels() async {
  List<String> nearestHotels = [];

  try {
    LocationPermission permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      throw Exception('Location permission denied');
    }

    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
     
    );

    print(position.latitude);
    print(position.longitude);

    for (var hotel in hotels) {
      double distance = Geolocator.distanceBetween(
        position.latitude,
        position.longitude,
        hotel.latitude,
        hotel.longitude,
      );

      const double maxDistance = 10000; // in meters
      if (distance <= maxDistance) {
        nearestHotels.add(hotel.name);
      }
    }
  } catch (e) {
    print('Error: $e');
  }

  return nearestHotels;
}
