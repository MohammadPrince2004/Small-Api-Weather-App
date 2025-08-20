
import 'package:json_annotation/json_annotation.dart';
import 'package:wheatherapp/Lib/ApiModels/Current.dart';
import 'package:wheatherapp/Lib/ApiModels/LocationModel.dart';
import 'package:wheatherapp/Lib/ApiModels/RequestModel.dart';

part 'FullModel.g.dart';

@JsonSerializable()
class FullModel {
    @JsonKey(name: "request")
    late Request request;
    @JsonKey(name: "location")
    late Location location;
    @JsonKey(name: "current")
    late Current current;

    FullModel({required this.request, required  this.location, required this.current});

    factory FullModel.fromJson(Map<String, dynamic> json) => _$FullModelFromJson(json);

    Map<String, dynamic> toJson() => _$FullModelToJson(this);
}
