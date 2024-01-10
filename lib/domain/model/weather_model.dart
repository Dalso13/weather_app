import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_model.freezed.dart';

part 'weather_model.g.dart';

@freezed
class WeatherModel with _$WeatherModel {
  const factory WeatherModel({
    required List<String> time,
    required List<num> temperature,
    required List<num> windSpeed,
    required List<num> weatherCode
  }) = _WeatherModel;

  factory WeatherModel.fromJson(Map<String, Object?> json) => _$WeatherModelFromJson(json);
}