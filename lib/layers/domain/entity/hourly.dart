import 'package:json_annotation/json_annotation.dart';

part 'hourly.g.dart';

@JsonSerializable(createJsonSchema: true)
class Hourly {
  final String time;
  final String temperature2m;

  Hourly({required this.time, required this.temperature2m});

  factory Hourly.fromJson(Map<String, dynamic> json) => _$HourlyFromJson(json);

  Map<String, dynamic> toJson() => _$HourlytoJson(this);
  static const jsonSchema = _$HourlyJsonSchema;
}
