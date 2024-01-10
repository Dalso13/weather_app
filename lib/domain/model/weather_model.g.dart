// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WeatherModelImpl _$$WeatherModelImplFromJson(Map<String, dynamic> json) =>
    _$WeatherModelImpl(
      time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
      temperature:
          (json['temperature'] as List<dynamic>).map((e) => e as num).toList(),
      windSpeed:
          (json['windSpeed'] as List<dynamic>).map((e) => e as num).toList(),
      weatherCode:
          (json['weatherCode'] as List<dynamic>).map((e) => e as num).toList(),
    );

Map<String, dynamic> _$$WeatherModelImplToJson(_$WeatherModelImpl instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature': instance.temperature,
      'windSpeed': instance.windSpeed,
      'weatherCode': instance.weatherCode,
    };
