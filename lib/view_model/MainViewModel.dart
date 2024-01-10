import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/view_model/main_state.dart';
import '../data/repository/locate_repository.dart';
import '../domain/model/weather_model.dart';

class MainViewModel extends ChangeNotifier {
  final WeatherRepository _weatherRepository;
  final LocateRepository _locaterepository;
  WeatherModel? model;

  MainViewModel({
    required WeatherRepository weatherRepository,
    required LocateRepository locaterepository,
  })  : _weatherRepository = weatherRepository,
        _locaterepository = locaterepository;

  final DateTime _time = DateTime.now();
  MainState _state = const MainState();
  MainState get state => _state;


  Future<void> getWeatherData() async {
    await getLocateData();

    model = await _weatherRepository.getWeatherData('${_state.lat}', '${_state.lng}');

    String date = DateFormat('yyyy-MM-ddTHH:00').format(_time);

    int length = model!.time.indexOf(date);

    _state = _state.copyWith(
      dateLength: length,
    );
    notifyListeners();
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