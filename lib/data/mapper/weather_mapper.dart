import 'package:weather_app/data/dto/weather_dto.dart';
import 'package:weather_app/domain/model/weather_model.dart';

extension WeatherMapper on Hourly {
  WeatherModel toMapper() {
    return WeatherModel(
      temperature: temperature2m ?? [],
      windSpeed: windspeed10m ?? [],
      weatherCode: weathercode ?? [],
      time: time ?? [],
    );
  }
}
