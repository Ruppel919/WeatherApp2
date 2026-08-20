// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  generationTimeMs: (json['generationtime_ms'] as num).toDouble(),
  utcOffsetSeconds: (json['utc_offset_seconds'] as num).toInt(),
  timezone: json['timezone'] as String,
  timezoneAbbreviation: json['timezone_abbreviation'] as String,
  elevation: (json['elevation'] as num).toDouble(),
  hourlyUnits: HourlyUnits.fromJson(
    json['hourly_units'] as Map<String, dynamic>,
  ),
  hourly: Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationtime_ms': instance.generationTimeMs,
      'utc_offset_seconds': instance.utcOffsetSeconds,
      'timezone': instance.timezone,
      'timezone_abbreviation': instance.timezoneAbbreviation,
      'elevation': instance.elevation,
      'hourly_units': instance.hourlyUnits,
      'hourly': instance.hourly,
    };

const _$WeatherModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'latitude': {'type': 'number'},
    'longitude': {'type': 'number'},
    'generationtime_ms': {'type': 'number'},
    'utc_offset_seconds': {'type': 'integer'},
    'timezone': {'type': 'string'},
    'timezone_abbreviation': {'type': 'string'},
    'elevation': {'type': 'number'},
    'hourly_units': {r'$ref': r'#/$defs/HourlyUnits'},
    'hourly': {r'$ref': r'#/$defs/Hourly'},
  },
  'required': [
    'latitude',
    'longitude',
    'generationtime_ms',
    'utc_offset_seconds',
    'timezone',
    'timezone_abbreviation',
    'elevation',
    'hourly_units',
    'hourly',
  ],
  r'$defs': {
    'HourlyUnits': {
      'type': 'object',
      'properties': {
        'time': {'type': 'string'},
        'temperature_2m': {'type': 'string'},
      },
      'required': ['time', 'temperature_2m'],
    },
    'Hourly': {
      'type': 'object',
      'properties': {
        'time': {
          'type': 'array',
          'items': {'type': 'string'},
        },
        'temperature_2m': {
          'type': 'array',
          'items': {'type': 'number'},
        },
      },
      'required': ['time', 'temperature_2m'],
    },
  },
};
