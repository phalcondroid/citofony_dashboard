import 'package:citofony_dashboard/auth/contracts/data/response/user_response.dart';

abstract interface class AuthResponse {
  String get token;
  UserResponse get user;
}
