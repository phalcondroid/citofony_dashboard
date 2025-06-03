part of 'navigation_tabs_bloc.dart';

@freezed
class NavigationTabsState with _$NavigationTabsState {
  const factory NavigationTabsState.onPage({@Default(0) int index}) = _Initial;
}
