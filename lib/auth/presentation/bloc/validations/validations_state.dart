part of 'validations_bloc.dart';

@freezed
class ValidationsState with _$ValidationsState {
  const factory ValidationsState.initial() = _Initial;
  const factory ValidationsState.loadInProgress() = _LoadInProgress;
}