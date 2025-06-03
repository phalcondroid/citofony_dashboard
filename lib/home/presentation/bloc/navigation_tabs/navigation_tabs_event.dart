part of 'navigation_tabs_bloc.dart';

@freezed
abstract class NavigationTabsEvent with _$NavigationTabsEvent {
  factory NavigationTabsEvent.changeTab({required int index}) = ChangeTab;
}
