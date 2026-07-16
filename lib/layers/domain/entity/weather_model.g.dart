// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

WeatherModel _$WeatherModelFromJson(Map<String, dynamic> json) => WeatherModel(
  latitude: (json['latitude'] as num).toDouble(),
  longitude: (json['longitude'] as num).toDouble(),
  generationTimes: (json['generationTimes'] as num).toDouble(),
  utcOffsetSeccond: (json['utcOffsetSeccond'] as num).toInt(),
  timeZone: json['timeZone'] as String,
  timeZoneAbbreviation: json['timeZoneAbbreviation'] as String,
  elevation: (json['elevation'] as num).toDouble(),
  hourlyUnits: HourlyUnits.fromJson(
    json['hourlyUnits'] as Map<String, dynamic>,
  ),
  hourly: Hourly.fromJson(json['hourly'] as Map<String, dynamic>),
);

Map<String, dynamic> _$WeatherModelToJson(WeatherModel instance) =>
    <String, dynamic>{
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'generationTimes': instance.generationTimes,
      'utcOffsetSeccond': instance.utcOffsetSeccond,
      'timeZone': instance.timeZone,
      'timeZoneAbbreviation': instance.timeZoneAbbreviation,
      'elevation': instance.elevation,
      'hourlyUnits': instance.hourlyUnits,
      'hourly': instance.hourly,
    };

const _$WeatherModelJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'latitude': {'type': 'number'},
    'longitude': {'type': 'number'},
    'generationTimes': {'type': 'number'},
    'utcOffsetSeccond': {'type': 'integer'},
    'timeZone': {'type': 'string'},
    'timeZoneAbbreviation': {'type': 'string'},
    'elevation': {'type': 'number'},
    'hourlyUnits': {r'$ref': r'#/$defs/HourlyUnits'},
    'hourly': {r'$ref': r'#/$defs/Hourly'},
  },
  'required': [
    'latitude',
    'longitude',
    'generationTimes',
    'utcOffsetSeccond',
    'timeZone',
    'timeZoneAbbreviation',
    'elevation',
    'hourlyUnits',
    'hourly',
  ],
  r'$defs': {
    'HourlyUnits': {
      'type': 'object',
      'properties': {
        'time': {
          'type': 'array',
          'items': {'type': 'string', 'format': 'date-time'},
        },
        'temperature2m': {
          'type': 'array',
          'items': {'type': 'number'},
        },
      },
      'required': ['time', 'temperature2m'],
    },
    'Hourly': {
      'type': 'object',
      'properties': {
        'time': {'type': 'string'},
        'temperature2m': {'type': 'string'},
      },
      'required': ['time', 'temperature2m'],
    },
  },
};
