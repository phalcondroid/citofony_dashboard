import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'navigation_tabs_state.dart';
part 'navigation_tabs_event.dart';
part 'navigation_tabs_bloc.freezed.dart';

@injectable
class NavigationTabsBloc
    extends Bloc<NavigationTabsEvent, NavigationTabsState> {
  NavigationTabsBloc() : super(const NavigationTabsState.onPage(index: 0)) {
    on<ChangeTab>(changeTab);
  }

  Future<void> changeTab(
    NavigationTabsEvent event,
    Emitter<NavigationTabsState> emit,
  ) async {
    emit(NavigationTabsState.onPage(index: event.index));
  }
}
