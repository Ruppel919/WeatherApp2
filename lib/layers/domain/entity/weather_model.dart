import 'package:json_annotation/json_annotation.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/hourly.dart';
import 'package:prosto_tipo_testovui_projekt/layers/domain/entity/hourlyUnits.dart';

part 'weather_model.g.dart';

@JsonSerializable(createJsonSchema: true)
class WeatherModel {
  final double latitude;
  final double longitude;
  final double generationTimes;
  final int utcOffsetSeccond;
  final String timeZone;
  final String timeZoneAbbreviation;
  final double elevation;
  final HourlyUnits hourlyUnits;
  final Hourly hourly;

  WeatherModel({
    required this.latitude,
    required this.longitude,
    required this.generationTimes,
    required this.utcOffsetSeccond,
    required this.timeZone,
    required this.timeZoneAbbreviation,
    required this.elevation,
    required this.hourlyUnits,
    required this.hourly,
  });

  factory WeatherModel.fromJson(Map<String, dynamic> json) =>
      _$WeatherModelFromJson(json);

  Map<String, dynamic> toJson() => _$WeatherModeltoJson(this);
  static const jsonSchema = _$WeatherModelJsonSchema;
}
