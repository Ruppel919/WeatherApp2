// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourlyUnits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
  time: (json['time'] as List<dynamic>)
      .map((e) => DateTime.parse(e as String))
      .toList(),
  temperature2m: (json['temperature2m'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
);

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time.map((e) => e.toIso8601String()).toList(),
      'temperature2m': instance.temperature2m,
    };

const _$HourlyUnitsJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
};
