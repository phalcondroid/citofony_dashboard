// ignore_for_file: invalid_annotation_target

import 'package:citofony_dashboard/auth/contracts/data/response/user_response.dart';
import 'package:citofony_dashboard/auth/data/factories/response/role_factory.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_factory.freezed.dart';
part 'user_factory.g.dart';

@freezed
abstract class UserFactory with _$UserFactory implements UserResponse {
  factory UserFactory({
    @JsonKey(name: "_id") required String id,
    required String username,
    required String name,
    required String email,
    required String lastname,
    @JsonKey(name: "number") required String phone,
    required List<RoleFactory> role,
  }) = _UserFactory;

  factory UserFactory.fromJson(Map<String, dynamic> json) =>
      _$UserFactoryFromJson(json);
}
