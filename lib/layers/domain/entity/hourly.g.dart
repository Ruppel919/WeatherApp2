// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hourly.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Hourly _$HourlyFromJson(Map<String, dynamic> json) => Hourly(
  time: json['time'] as String,
  temperature2m: json['temperature2m'] as String,
);

Map<String, dynamic> _$HourlyToJson(Hourly instance) => <String, dynamic>{
  'time': instance.time,
  'temperature2m': instance.temperature2m,
};

const _$HourlyJsonSchema = {
  r'$schema': 'https://json-schema.org/draft/2020-12/schema',
  'type': 'object',
  'properties': {
    'time': {'type': 'string'},
    'temperature2m': {'type': 'string'},
  },
  'required': ['time', 'temperature2m'],
};
