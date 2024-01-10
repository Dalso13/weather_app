import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'weather_code_model.freezed.dart';

part 'weather_code_model.g.dart';

@freezed
class WeatherCodeModel with _$WeatherCodeModel {
  const factory WeatherCodeModel({
    required String description,
    required String image,
  }) = _WeatherCodeModel;
  
  factory WeatherCodeModel.fromJson(Map<String, Object?> json) => _$WeatherCodeModelFromJson(json); 
}