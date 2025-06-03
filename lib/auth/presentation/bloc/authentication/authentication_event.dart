part of 'authentication_bloc.dart';

@freezed
abstract class AuthenticationEvent with _$AuthenticationEvent {
  const factory AuthenticationEvent.doLogin({
    required String username,
    required String password,
  }) = _AuthEventLogin;
}
