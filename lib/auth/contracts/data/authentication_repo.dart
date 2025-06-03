import 'package:citofony_dashboard/auth/contracts/data/response/auth_response.dart';
import 'package:citofony_dashboard/auth/data/factories/params/login_params.dart';
import 'package:citofony_dashboard/common/helpers/network/base_single_response.dart';

abstract interface class AuthenticationRepo {
  Future<BaseSingleResponse<AuthResponse>> login(LoginParams params);
}
