// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_single_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseSingleResponseImpl<T> _$$BaseSingleResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$BaseSingleResponseImpl<T>(
  statusCode: (json['statusCode'] as num).toInt(),
  data: fromJsonT(json['data']),
  message: json['message'] as String,
  timestamp: json['timestamp'] as String,
  path: json['path'] as String,
);

Map<String, dynamic> _$$BaseSingleResponseImplToJson<T>(
  _$BaseSingleResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': toJsonT(instance.data),
  'message': instance.message,
  'timestamp': instance.timestamp,
  'path': instance.path,
};
