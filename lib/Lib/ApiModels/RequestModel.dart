
import 'package:json_annotation/json_annotation.dart';
part 'RequestModel.g.dart';
@JsonSerializable()
class Request {
    @JsonKey(name: "type")
    String type;
    @JsonKey(name: "query")
    String query;
    @JsonKey(name: "language")
    String language;
    @JsonKey(name: "unit")
    String unit;

    Request({
        required this.type,
        required this.query,
        required this.language,
        required this.unit,
    });

    factory Request.fromJson(Map<String, dynamic> json) => _$RequestFromJson(json);

    Map<String, dynamic> toJson() => _$RequestToJson(this);
}