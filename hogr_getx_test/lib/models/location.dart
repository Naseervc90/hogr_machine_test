// lib/models/location.dart

class Location {
  final String address;
  final String city;
  final String state;
  final String zipCode;

  Location({
    required this.address,
    required this.city,
    required this.state,
    required this.zipCode,
  });

  factory Location.fromJson(Map<String, dynamic> json) {
    return Location(
      address: json['address'],
      city: json['city'],
      state: json['state'],
      zipCode: json['zip code'],
    );
  }
}
