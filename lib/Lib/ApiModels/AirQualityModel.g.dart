// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'AirQualityModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQuality _$AirQualityFromJson(Map<String, dynamic> json) => AirQuality(
  co: json['co'] as String,
  no2: json['no2'] as String,
  o3: json['o3'] as String,
  so2: json['so2'] as String,
  pm25: json['pm2_5'] as String,
  pm10: json['pm10'] as String,
  usEpaIndex: json['us-epa-index'] as String,
  gbDefraIndex: json['gb-defra-index'] as String,
);

Map<String, dynamic> _$AirQualityToJson(AirQuality instance) =>
    <String, dynamic>{
      'co': instance.co,
      'no2': instance.no2,
      'o3': instance.o3,
      'so2': instance.so2,
      'pm2_5': instance.pm25,
      'pm10': instance.pm10,
      'us-epa-index': instance.usEpaIndex,
      'gb-defra-index': instance.gbDefraIndex,
    };
