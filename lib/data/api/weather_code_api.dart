import 'dart:convert';
import 'dart:io';

class WeatherCodeApi {
  Future<Map<String,dynamic>> getWeatherCode(String code) async {
    final file = File('assets/descriptions.json');
    final json = await file.readAsString();
    return jsonDecode(json);
  }
}