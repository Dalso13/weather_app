import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/data/repository/weather-code_repository.dart';
import 'package:weather_app/domain/model/weather_code_model.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/view_model/main_state.dart';
import '../data/repository/locate_repository.dart';

class MainViewModel extends ChangeNotifier {
  final WeatherRepository _weatherRepository;
  final WeatherCodeRepository _weatherCodeRepository;
  final LocateRepository _locaterepository;

  MainViewModel({
    required WeatherRepository weatherRepository,
    required WeatherCodeRepository weatherCodeRepository,
    required LocateRepository locaterepository,
  })  : _weatherRepository = weatherRepository,
        _weatherCodeRepository = weatherCodeRepository,
        _locaterepository = locaterepository;

  final DateTime _time = DateTime.now();
  MainState _state = const MainState();
  MainState get state => _state;


  Future<void> getWeatherData() async {
    notifyListeners();
    await getLocateData();

    _state = _state.copyWith(
      isLoading: false,
    );
    notifyListeners();

    final model = await _weatherRepository.getWeatherData('${_state.lat}', '${_state.lng}');

    String date = DateFormat('yyyy-MM-ddTHH:00').format(_time);

    int length = model.time.indexOf(date);
    final weatherCode = await getWeatherCodeData('${model.weatherCode[length]}');
    _state = _state.copyWith(
      model: model,
      dateLength: length,
      codeModel: weatherCode,
      isLoading: true,
    );
    notifyListeners();
  }

  Future<WeatherCodeModel> getWeatherCodeData(String code) async {
    String day = 'night';
    if (_time.month >= 6 && _time.month < 18 ) {
      day = 'day';
    }

    return await _weatherCodeRepository.getWeatherCode(code, day);
  }

  Future<void> getLocateData() async {
    final Position position = await _locaterepository.determinePosition();
    _state = _state.copyWith(
      lat: position.latitude,
      lng: position.longitude
    );
    notifyListeners();
  }
}