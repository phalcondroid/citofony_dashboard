part of 'home_bloc.dart';

@freezed
class HomeEvent with _$HomeEvent {
  factory HomeEvent.startCall() = _StartCall;
  factory HomeEvent.loadNotifications() = _LoadNotifications;
}
