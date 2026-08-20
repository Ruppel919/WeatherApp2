// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourlyUnits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HourlyUnits _$HourlyUnitsFromJson(Map<String, dynamic> json) => HourlyUnits(
  time: json['time'] as String,
  temperature2m: json['temperature_2m'] as String,
);

Map<String, dynamic> _$HourlyUnitsToJson(HourlyUnits instance) =>
    <String, dynamic>{
      'time': instance.time,
      'temperature_2m': instance.temperature2m,
    };

const _$HourlyUnitsJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'time': {'type': 'string'},
    'temperature_2m': {'type': 'string'},
  },
  'required': ['time', 'temperature_2m'],
};
