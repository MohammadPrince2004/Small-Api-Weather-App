// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'FullModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FullModel _$FullModelFromJson(Map<String, dynamic> json) => FullModel(
  request: Request.fromJson(json['request'] as Map<String, dynamic>),
  location: Location.fromJson(json['location'] as Map<String, dynamic>),
  current: Current.fromJson(json['current'] as Map<String, dynamic>),
);

Map<String, dynamic> _$FullModelToJson(FullModel instance) => <String, dynamic>{
  'request': instance.request,
  'location': instance.location,
  'current': instance.current,
};
