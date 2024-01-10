import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:weather_app/domain/model/weather_code_model.dart';
import 'package:weather_app/domain/model/weather_model.dart';
import '../core/result.dart';

part 'main_state.freezed.dart';

part 'main_state.g.dart';

@freezed
class MainState with _$MainState {
  const factory MainState({
    @Default(0) int dateLength,
    @Default(0) double lat,
    @Default(0) double lng,
    @Default(false) bool isLoading,
    WeatherModel? model,
    WeatherCodeModel? codeModel,
  }) = _MainState;

  factory MainState.fromJson(Map<String, Object?> json) => _$MainStateFromJson(json);
}