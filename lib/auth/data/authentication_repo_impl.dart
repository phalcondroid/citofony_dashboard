import 'package:citofony_dashboard/auth/contracts/data/authentication_repo.dart';
import 'package:citofony_dashboard/auth/data/factories/params/login_params.dart';
import 'package:citofony_dashboard/auth/data/factories/response/auth_factory.dart';
import 'package:citofony_dashboard/common/helpers/network/base_single_response.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';
import 'package:clean_network/clean_network.dart';
import 'package:clean_network_annotations/clean_network_annotations.dart';

part 'authentication_repo_impl.g.dart';

@Injectable(as: AuthenticationRepo)
@RestRepository(path: "/auth")
abstract interface class AuthenticationRepoImpl implements AuthenticationRepo {
  @FactoryMethod()
  factory AuthenticationRepoImpl() = _AuthenticationRepoImpl;

  @Post()
  Future<BaseSingleResponse<AuthFactory>> login(
    @PostRequestModel() LoginParams params,
  );
}
