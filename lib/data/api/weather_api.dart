import 'dart:convert';

import 'package:http/http.dart' as http;

class WeatherApi {
  Future<Map<String, dynamic>> getApi(String lat, String lng) async {
    final response = await http.get(Uri.parse(
        'https://api.open-meteo.com/v1/forecast?hourly=temperature_2m,weathercode,relativehumidity_2m,windspeed_10m,pressure_msl&latitude=$lat&longitude=$lng'));
    return jsonDecode(response.body);
  }
}
