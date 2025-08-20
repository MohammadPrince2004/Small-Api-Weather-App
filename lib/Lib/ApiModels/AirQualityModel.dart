
import 'package:json_annotation/json_annotation.dart';
part 'AirQualityModel.g.dart';

@JsonSerializable()
class AirQuality {
    @JsonKey(name: "co")
    String co;
    @JsonKey(name: "no2")
    String no2;
    @JsonKey(name: "o3")
    String o3;
    @JsonKey(name: "so2")
    String so2;
    @JsonKey(name: "pm2_5")
    String pm25;
    @JsonKey(name: "pm10")
    String pm10;
    @JsonKey(name: "us-epa-index")
    String usEpaIndex;
    @JsonKey(name: "gb-defra-index")
    String gbDefraIndex;

    AirQuality({
        required this.co,
        required this.no2,
        required this.o3,
        required this.so2,
        required this.pm25,
        required this.pm10,
        required this.usEpaIndex,
        required this.gbDefraIndex,
    });

    factory AirQuality.fromJson(Map<String, dynamic> json) => _$AirQualityFromJson(json);

    Map<String, dynamic> toJson() => _$AirQualityToJson(this);
}
