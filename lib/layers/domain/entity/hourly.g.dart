// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
  time: (json['time'] as List<dynamic>).map((e) => e as String).toList(),
  temperature2m: (json['temperature_2m'] as List<dynamic>)
      .map((e) => (e as num).toDouble())
      .toList(),
);

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
  'time': instance.time,
  'temperature_2m': instance.temperature2m,
};

const _$HourlyJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
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
};
