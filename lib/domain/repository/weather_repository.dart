import 'package:weather_app/domain/model/weather_model.dart';

abstract interface class WeatherRepository {
  Future<WeatherModel> getWeatherData(String lat, String lng);
}