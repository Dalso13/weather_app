import 'package:get_it/get_it.dart';
import 'package:weather_app/data/api/weather_code_api.dart';
import 'package:weather_app/data/repository/locate_repository.dart';
import 'package:weather_app/data/repository/weather-code_repository.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/view_model/MainViewModel.dart';

import '../data/api/weather_api.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<WeatherApi>(WeatherApi());
  getIt.registerSingleton<WeatherCodeApi>(WeatherCodeApi());
  getIt.registerSingleton<WeatherRepository>(
      WeatherRepositoryImpl(weatherApi: getIt<WeatherApi>()));
  getIt.registerSingleton<WeatherCodeRepository>(
      WeatherCodeRepository(api: getIt<WeatherCodeApi>()));
  getIt.registerSingleton<LocateRepository>(LocateRepository());
  getIt.registerFactory<MainViewModel>(
    () => MainViewModel(
        weatherRepository: getIt<WeatherRepository>(),
        locaterepository: getIt<LocateRepository>(),
        weatherCodeRepository: getIt<WeatherCodeRepository>()),
  );
}
