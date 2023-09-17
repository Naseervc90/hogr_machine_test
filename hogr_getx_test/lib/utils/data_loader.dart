import 'dart:convert';
import 'package:flutter/services.dart';

Future<Map<String, dynamic>> loadData() async {
  // Load the JSON file from the assets folder
  final String data = await rootBundle.loadString('assets/data.json');

  // Parse the JSON string into a Map
  final Map<String, dynamic> jsonData = json.decode(data);

  // Return the parsed data
  return jsonData;
}
