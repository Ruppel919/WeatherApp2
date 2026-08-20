import 'package:json_annotation/json_annotation.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/hourly.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/hourlyUnits.dart';

part 'weather_model.g.dart';

@JsonSerializable(createJsonSchema: true)
class WeatherModel {
  final double latitude;
  final double longitude;

  @JsonKey(name: 'generationtime_ms')
  final double generationTimeMs;

  @JsonKey(name: 'utc_offset_seconds')
  final int utcOffsetSeconds;

  final String timezone;

  @JsonKey(name: 'timezone_abbreviation')
  final String timezoneAbbreviation;

  final double elevation;

  @JsonKey(name: 'hourly_units')
  final HourlyUnits hourlyUnits;

  final Hourly hourly;

  const WeatherModel({
    required this.latitude,
    required this.longitude,
    required this.generationTimeMs,
    required this.utcOffsetSeconds,
    required this.timezone,
    required this.timezoneAbbreviation,
    required this.elevation,
    required this.hourlyUnits,
    required this.hourly,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModelToJson(this);

  static const jsonSchema = _$WeatherModelJsonSchema;
}
