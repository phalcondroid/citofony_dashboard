import 'package:citofony_dashboard/auth/contracts/data/authentication_repo.dart';
import 'package:citofony_dashboard/auth/contracts/data/response/auth_response.dart';
import 'package:citofony_dashboard/auth/data/factories/params/login_params.dart';
import 'package:citofony_dashboard/auth/exceptions/auth_exception.dart';
import 'package:citofony_dashboard/common/contracts/use_case.dart';
import 'package:citofony_dashboard/common/helpers/network/base_single_response.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';

@Named("login_use_case")
@Injectable(as: UseCase<Either<LoginException, AuthResponse>, LoginParams>)
class LoginUseCase
    implements UseCase<Either<LoginException, AuthResponse>, LoginParams> {
  final AuthenticationRepo repo;

  const LoginUseCase(this.repo);

  @override
  Future<Either<LoginException, AuthResponse>> exec(LoginParams params) async {
    return repo
        .login(params)
        .then((BaseSingleResponse<AuthResponse> response) {
          print("====>>>> use case: ${response.data}");
          return Either<LoginException, AuthResponse>.right(response.data);
        })
        .catchError((e, s) {
          return Either<LoginException, AuthResponse>.left(
            LoginException(text: "$e, $s"),
          );
        });
  }
}
