
import 'package:json_annotation/json_annotation.dart';
part 'Astro.g.dart';
@JsonSerializable()
class Astro {
    @JsonKey(name: "sunrise")
    String sunrise;
    @JsonKey(name: "sunset")
    String sunset;
    @JsonKey(name: "moonrise")
    String moonrise;
    @JsonKey(name: "moonset")
    String moonset;
    @JsonKey(name: "moon_phase")
    String moonPhase;
    @JsonKey(name: "moon_illumination")
    int moonIllumination;

    Astro({
        required this.sunrise,
        required this.sunset,
        required this.moonrise,
        required this.moonset,
        required this.moonPhase,
        required this.moonIllumination,
    });

    factory Astro.fromJson(Map<String, dynamic> json) => _$AstroFromJson(json);

    Map<String, dynamic> toJson() => _$AstroToJson(this);
}