
import 'package:json_annotation/json_annotation.dart';
import 'package:wheatherapp/Lib/ApiModels/AirQualityModel.dart';
import 'package:wheatherapp/Lib/ApiModels/Astro.dart';
part 'Current.g.dart';
@JsonSerializable()
class Current {
    @JsonKey(name: "observation_time")
    String observationTime;
    @JsonKey(name: "temperature")
    int temperature;
    @JsonKey(name: "weather_code")
    int weatherCode;
    @JsonKey(name: "weather_icons")
    List<String> weatherIcons;
    @JsonKey(name: "weather_descriptions")
    List<String> weatherDescriptions;
    @JsonKey(name: "astro")
    Astro astro;
    @JsonKey(name: "air_quality")
    AirQuality airQuality;
    @JsonKey(name: "wind_speed")
    int windSpeed;
    @JsonKey(name: "wind_degree")
    int windDegree;
    @JsonKey(name: "wind_dir")
    String windDir;
    @JsonKey(name: "pressure")
    int pressure;
    @JsonKey(name: "precip")
    double precip;
    @JsonKey(name: "humidity")
    int humidity;
    @JsonKey(name: "cloudcover")
    int cloudcover;
    @JsonKey(name: "feelslike")
    int feelslike;
    @JsonKey(name: "uv_index")
    int uvIndex;
    @JsonKey(name: "visibility")
    int visibility;
    @JsonKey(name: "is_day")
    String isDay;

    Current({
        required this.observationTime,
        required this.temperature,
        required this.weatherCode,
        required this.weatherIcons,
        required this.weatherDescriptions,
        required this.astro,
        required this.airQuality,
        required this.windSpeed,
        required this.windDegree,
        required this.windDir,
        required this.pressure,
        required this.precip,
        required this.humidity,
        required this.cloudcover,
        required this.feelslike,
        required this.uvIndex,
        required this.visibility,
        required this.isDay,
    });

    factory Current.fromJson(Map<String, dynamic> json) => _$CurrentFromJson(json);

    Map<String, dynamic> toJson() => _$CurrentToJson(this);
}







