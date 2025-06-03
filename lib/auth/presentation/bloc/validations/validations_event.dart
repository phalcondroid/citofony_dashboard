part of 'validations_bloc.dart';

@freezed
abstract class ValidationsEvent with _$ValidationsEvent {
  const factory ValidationsEvent.setUp({
    required String email,
    required String? nif,
    required String? name,
    required String password,
  }) = SetUpEvent;
}
