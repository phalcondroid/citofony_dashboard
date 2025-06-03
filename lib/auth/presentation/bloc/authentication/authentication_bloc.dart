import 'package:bloc/bloc.dart';
import 'package:citofony_dashboard/auth/contracts/data/response/auth_response.dart';
import 'package:citofony_dashboard/auth/data/factories/params/login_params.dart';
import 'package:citofony_dashboard/auth/exceptions/auth_exception.dart';
import 'package:citofony_dashboard/common/contracts/use_case.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'authentication_bloc.freezed.dart';
part 'authentication_state.dart';
part 'authentication_event.dart';

@injectable
class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final UseCase<Either<LoginException, AuthResponse>, LoginParams> useCase;

  AuthenticationBloc({@Named("login_use_case") required this.useCase})
    : super(const AuthenticationState.initial()) {
    on<_AuthEventLogin>(_doLogin);
  }

  Future<void> _doLogin(
    _AuthEventLogin event,
    Emitter<AuthenticationState> emit,
  ) async {
    emit(AuthenticationState.loading());
    final Either<LoginException, AuthResponse> result = await useCase.exec(
      LoginParams(username: event.username, pass: event.password),
    );
    result.fold(
      (l) {
        emit(AuthenticationState.loginFailed());
      },
      (r) {
        emit(AuthenticationState.logged());
      },
    );
  }
}
