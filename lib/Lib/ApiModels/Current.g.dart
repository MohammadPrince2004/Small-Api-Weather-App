// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'Current.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Current _$CurrentFromJson(Map<String, dynamic> json) => Current(
  observationTime: json['observation_time'] as String,
  temperature: (json['temperature'] as num).toInt(),
  weatherCode: (json['weather_code'] as num).toInt(),
  weatherIcons: (json['weather_icons'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  weatherDescriptions: (json['weather_descriptions'] as List<dynamic>)
      .map((e) => e as String)
      .toList(),
  astro: Astro.fromJson(json['astro'] as Map<String, dynamic>),
  airQuality: AirQuality.fromJson(json['air_quality'] as Map<String, dynamic>),
  windSpeed: (json['wind_speed'] as num).toInt(),
  windDegree: (json['wind_degree'] as num).toInt(),
  windDir: json['wind_dir'] as String,
  pressure: (json['pressure'] as num).toInt(),
  precip: (json['precip'] as num).toDouble(),
  humidity: (json['humidity'] as num).toInt(),
  cloudcover: (json['cloudcover'] as num).toInt(),
  feelslike: (json['feelslike'] as num).toInt(),
  uvIndex: (json['uv_index'] as num).toInt(),
  visibility: (json['visibility'] as num).toInt(),
  isDay: json['is_day'] as String,
);

Map<String, dynamic> _$CurrentToJson(Current instance) => <String, dynamic>{
  'observation_time': instance.observationTime,
  'temperature': instance.temperature,
  'weather_code': instance.weatherCode,
  'weather_icons': instance.weatherIcons,
  'weather_descriptions': instance.weatherDescriptions,
  'astro': instance.astro,
  'air_quality': instance.airQuality,
  'wind_speed': instance.windSpeed,
  'wind_degree': instance.windDegree,
  'wind_dir': instance.windDir,
  'pressure': instance.pressure,
  'precip': instance.precip,
  'humidity': instance.humidity,
  'cloudcover': instance.cloudcover,
  'feelslike': instance.feelslike,
  'uv_index': instance.uvIndex,
  'visibility': instance.visibility,
  'is_day': instance.isDay,
};
