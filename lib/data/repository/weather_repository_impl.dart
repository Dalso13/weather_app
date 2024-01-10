import 'package:intl/intl.dart';
import 'package:weather_app/data/api/weather_api.dart';
import 'package:weather_app/data/dto/weather_dto.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/data/mapper/weather_mapper.dart';

class WeatherRepositoryImpl implements WeatherRepository {
  final WeatherApi _weatherApi;

  WeatherRepositoryImpl({
    required WeatherApi weatherApi,
  }) : _weatherApi = weatherApi;

  @override
  Future<WeatherModel> getWeatherData(String lat, String lng) async {
    final json = await _weatherApi.getApi(lat, lng);
    final dto = Weather.fromJson(json).hourly!.toMapper();

    return dto;
  }


}