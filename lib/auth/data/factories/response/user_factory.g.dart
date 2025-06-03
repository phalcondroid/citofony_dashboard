// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_factory.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserFactoryImpl _$$UserFactoryImplFromJson(Map<String, dynamic> json) =>
    _$UserFactoryImpl(
      id: json['_id'] as String,
      username: json['username'] as String,
      name: json['name'] as String,
      email: json['email'] as String,
      lastname: json['lastname'] as String,
      phone: json['number'] as String,
      role:
          (json['role'] as List<dynamic>)
              .map((e) => RoleFactory.fromJson(e as Map<String, dynamic>))
              .toList(),
    );

Map<String, dynamic> _$$UserFactoryImplToJson(_$UserFactoryImpl instance) =>
    <String, dynamic>{
      '_id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'email': instance.email,
      'lastname': instance.lastname,
      'number': instance.phone,
      'role': instance.role,
    };
