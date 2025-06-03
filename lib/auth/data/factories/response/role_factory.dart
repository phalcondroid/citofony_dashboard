import 'package:citofony_dashboard/auth/contracts/data/response/role_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'role_factory.freezed.dart';
part 'role_factory.g.dart';

@freezed
abstract class RoleFactory with _$RoleFactory implements RoleResponse {
  factory RoleFactory({required String name, required int type}) = _RoleFactory;

  factory RoleFactory.fromJson(Map<String, dynamic> json) =>
      _$RoleFactoryFromJson(json);
}
