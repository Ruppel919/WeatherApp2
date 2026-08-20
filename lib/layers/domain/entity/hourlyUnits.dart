import 'package:json_annotation/json_annotation.dart';

part 'hourlyUnits.g.dart';

@JsonSerializable(createJsonSchema: true)
class HourlyUnits {
  final String time;

  @JsonKey(name: 'temperature_2m')
  final String temperature2m;

  HourlyUnits({required this.time, required this.temperature2m});

  factory HourlyUnits.fromJson(Map<String, dynamic> json) =>
      _$HourlyUnitsFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyUnitsToJson(this);
  static const jsonSchema = _$HourlyUnitsJsonSchema;
}
