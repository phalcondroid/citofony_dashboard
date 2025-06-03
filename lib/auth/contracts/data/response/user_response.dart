import 'package:citofony_dashboard/auth/contracts/data/response/role_response.dart';

abstract interface class UserResponse {
  String get id;
  String get name;
  String get lastname;
  String get username;
  String get email;
  String get phone;
  List<RoleResponse> get role;
}
