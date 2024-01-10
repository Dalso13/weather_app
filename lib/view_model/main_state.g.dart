// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'main_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MainStateImpl _$$MainStateImplFromJson(Map<String, dynamic> json) =>
    _$MainStateImpl(
      dateLength: json['dateLength'] as int? ?? 0,
      lat: (json['lat'] as num?)?.toDouble() ?? 0,
      lng: (json['lng'] as num?)?.toDouble() ?? 0,
      isLoading: json['isLoading'] as bool? ?? false,
      model: json['model'] == null
          ? null
          : WeatherModel.fromJson(json['model'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$MainStateImplToJson(_$MainStateImpl instance) =>
    <String, dynamic>{
      'dateLength': instance.dateLength,
      'lat': instance.lat,
      'lng': instance.lng,
      'isLoading': instance.isLoading,
      'model': instance.model,
    };
