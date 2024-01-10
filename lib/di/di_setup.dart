import 'package:get_it/get_it.dart';
import 'package:weather_app/data/repository/locate_repository.dart';
import 'package:weather_app/data/repository/weather_repository_impl.dart';
import 'package:weather_app/domain/repository/weather_repository.dart';
import 'package:weather_app/view_model/MainViewModel.dart';

import '../data/api/weather_api.dart';

final getIt = GetIt.instance;

void diSetup() {
  getIt.registerSingleton<WeatherApi>(WeatherApi());
  getIt.registerSingleton<WeatherRepository>(
      WeatherRepositoryImpl(weatherApi: getIt<WeatherApi>()));
  getIt.registerSingleton<LocateRepository>(LocateRepository());
  getIt.registerFactory<MainViewModel>(() => MainViewModel(
      weatherRepository: getIt<WeatherRepository>(),
      locaterepository: getIt<LocateRepository>()));
}
