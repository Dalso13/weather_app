import 'dart:convert';
import 'dart:io';

import 'package:flutter/services.dart';

class WeatherCodeApi {
  Future<Map<String,dynamic>> getWeatherCode(String code) async {
    final file = await rootBundle.loadString('assets/json/descriptions.json');
    return jsonDecode(file);
  }
}