import 'package:weather_app/domain/model/weather_code_model.dart';

import '../api/weather_code_api.dart';

class WeatherCodeRepository {
  final WeatherCodeApi _api;

  const WeatherCodeRepository({
    required WeatherCodeApi api,
  }) : _api = api;

  Future<WeatherCodeModel> getWeatherCode(String code , String day) async {
    final json = await _api.getWeatherCode(code);
    final weatherCode = json[code];
    final dayWeather = weatherCode[day];
    return WeatherCodeModel.fromJson(dayWeather);
  }
}