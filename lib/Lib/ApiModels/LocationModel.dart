
import 'package:json_annotation/json_annotation.dart';
part 'LocationModel.g.dart';
@JsonSerializable()
class Location {
    @JsonKey(name: "name")
    String name;
    @JsonKey(name: "country")
    String country;
    @JsonKey(name: "region")
    String region;
    @JsonKey(name: "lat")
    String lat;
    @JsonKey(name: "lon")
    String lon;
    @JsonKey(name: "timezone_id")
    String timezoneId;
    @JsonKey(name: "localtime")
    String localtime;
    @JsonKey(name: "localtime_epoch")
    int localtimeEpoch;
    @JsonKey(name: "utc_offset")
    String utcOffset;

    Location({
        required this.name,
        required this.country,
        required this.region,
        required this.lat,
        required this.lon,
        required this.timezoneId,
        required this.localtime,
        required this.localtimeEpoch,
        required this.utcOffset,
    });

    factory Location.fromJson(Map<String, dynamic> json) => _$LocationFromJson(json);

    Map<String, dynamic> toJson() => _$LocationToJson(this);
}