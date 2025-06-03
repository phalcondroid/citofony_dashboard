// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:fpdart/fpdart.dart' as _i169;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

import '../../../auth/contracts/data/authentication_repo.dart' as _i62;
import '../../../auth/contracts/data/response/auth_response.dart' as _i320;
import '../../../auth/data/authentication_repo_impl.dart' as _i386;
import '../../../auth/data/factories/params/login_params.dart' as _i492;
import '../../../auth/domain/login_use_case.dart' as _i648;
import '../../../auth/exceptions/auth_exception.dart' as _i515;
import '../../../auth/presentation/bloc/authentication/authentication_bloc.dart'
    as _i928;
import '../../../home/presentation/bloc/navigation_tabs/navigation_tabs_bloc.dart'
    as _i566;
import '../../contracts/use_case.dart' as _i749;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    gh.factory<_i566.NavigationTabsBloc>(() => _i566.NavigationTabsBloc());
    gh.factory<_i62.AuthenticationRepo>(() => _i386.AuthenticationRepoImpl());
    gh.factory<
      _i749.UseCase<
        _i169.Either<_i515.LoginException, _i320.AuthResponse>,
        _i492.LoginParams
      >
    >(
      () => _i648.LoginUseCase(gh<_i62.AuthenticationRepo>()),
      instanceName: 'login_use_case',
    );
    gh.factory<_i928.AuthenticationBloc>(
      () => _i928.AuthenticationBloc(
        useCase: gh<
          _i749.UseCase<
            _i169.Either<_i515.LoginException, _i320.AuthResponse>,
            _i492.LoginParams
          >
        >(instanceName: 'login_use_case'),
      ),
    );
    return this;
  }
}
