// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'auth_factory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$AuthFactoryImpl _$$AuthFactoryImplFromJson(Map<String, dynamic> json) =>
    _$AuthFactoryImpl(
      token: json['token'] as String,
      user: UserFactory.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$AuthFactoryImplToJson(_$AuthFactoryImpl instance) =>
    <String, dynamic>{'token': instance.token, 'user': instance.user};
