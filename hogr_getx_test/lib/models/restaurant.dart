// lib/models/restaurant.dart

import 'package:hogr_getx_test/models/hours.dart';
import 'package:hogr_getx_test/models/location.dart';

class Restaurant {
  final String name;
  final String cuisine;
  final String price;
  final double rating;
  final Location location;
  final Hours hours;
  final String website;
  final String phoneNumber;

  Restaurant({
    required this.name,
    required this.cuisine,
    required this.price,
    required this.rating,
    required this.location,
    required this.hours,
    required this.website,
    required this.phoneNumber,
  });

  factory Restaurant.fromJson(Map<String, dynamic> json) {
    return Restaurant(
      name: json['name'],
      cuisine: json['cuisine'],
      price: json['price'],
      rating: json['rating'].toDouble(),
      location: Location.fromJson(json['location']),
      hours: Hours.fromJson(json['hours']),
      website: json['website'],
      phoneNumber: json['phone number'],
    );
  }
}
