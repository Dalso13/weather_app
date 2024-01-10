import '../api/weather_code_api.dart';

class WeatherCodeRepository {
  final WeatherCodeApi _api;

  const WeatherCodeRepository({
    required WeatherCodeApi api,
  }) : _api = api;

  Future<Map<String,dynamic>> getWeatherCode(String code) async {
    final json = await _api.getWeatherCode(code);
    return json[code];
  }
}