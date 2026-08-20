import 'package:json_annotation/json_annotation.dart';

part 'hourly.g.dart';

@JsonSerializable(createJsonSchema: true)
class Hourly {
  final List<String> time;

  @JsonKey(name: 'temperature_2m')
  final List<double> temperature2m;

  Hourly({required this.time, required this.temperature2m});

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlyToJson(this);
  static const jsonSchema = _$HourlyJsonSchema;
}
