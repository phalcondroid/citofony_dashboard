import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'home_state.dart';
part 'home_event.dart';
part 'home_bloc.freezed.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(const HomeState.initial()) {
    on<_LoadNotifications>(_loadNotifications);
  }

  Future<void> _loadNotifications(
    _LoadNotifications event,
    Emitter<HomeState> emit,
  ) async {}
}
