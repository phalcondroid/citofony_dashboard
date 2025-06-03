// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListResponseImpl<T> _$$BaseListResponseImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) => _$BaseListResponseImpl<T>(
  statusCode: (json['statusCode'] as num).toInt(),
  data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
  message: json['message'] as String,
  timestamp: json['timestamp'] as String,
  count: (json['count'] as num).toInt(),
  path: json['path'] as String,
);

Map<String, dynamic> _$$BaseListResponseImplToJson<T>(
  _$BaseListResponseImpl<T> instance,
  Object? Function(T value) toJsonT,
) => <String, dynamic>{
  'statusCode': instance.statusCode,
  'data': instance.data.map(toJsonT).toList(),
  'message': instance.message,
  'timestamp': instance.timestamp,
  'count': instance.count,
  'path': instance.path,
};
