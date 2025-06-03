import 'package:citofony_dashboard/common/config/ui/helpers/pagination_utils.dart';
import 'package:citofony_dashboard/common/config/ui/helpers/standard_text.dart';
import 'package:citofony_dashboard/home/presentation/bloc/navigation_tabs/navigation_tabs_bloc.dart';
import 'package:citofony_dashboard/home/presentation/widgets/call_template.dart';
import 'package:citofony_dashboard/home/presentation/widgets/custom_drawer.dart';
import 'package:citofony_dashboard/home/presentation/widgets/market_place.dart';
import 'package:citofony_dashboard/home/presentation/widgets/notification_center_screen.dart';
import 'package:citofony_dashboard/home/presentation/widgets/services_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:stylish_bottom_bar/stylish_bottom_bar.dart';

import '../widgets/mock_notifications.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = PageController();

    return Scaffold(
      extendBody: true,
      appBar: AppBar(title: StandardText(text: "home.appbar".i18n())),
      drawer: CustomDrawer(),
      bottomNavigationBar: BlocBuilder<NavigationTabsBloc, NavigationTabsState>(
        builder: (context, NavigationTabsState state) {
          return state.when(
            onPage: (index) {
              return StylishBottomBar(
                option: AnimatedBarOptions(iconStyle: IconStyle.animated),
                items: [
                  BottomBarItem(
                    icon: const Icon(Icons.house_outlined),
                    selectedIcon: const Icon(Icons.house_rounded),
                    selectedColor: Colors.deepPurpleAccent,
                    unSelectedColor: Colors.grey,
                    title: Text("home.bar.home".i18n()),
                    badge: const Text('9+'),
                    showBadge: true,
                    badgeColor: Colors.green,
                    badgePadding: const EdgeInsets.only(left: 4, right: 4),
                  ),
                  BottomBarItem(
                    icon: const Icon(Icons.shopping_cart_outlined),
                    selectedIcon: const Icon(Icons.shopping_cart),
                    selectedColor: Colors.deepPurple,
                    title: Text("home.bar.market".i18n()),
                  ),
                  BottomBarItem(
                    icon: const Icon(Icons.calendar_month_outlined),
                    selectedIcon: const Icon(Icons.calendar_month),
                    selectedColor: Colors.deepPurpleAccent,
                    title: Text("home.bar.bookings".i18n()),
                  ),
                  BottomBarItem(
                    icon: const Icon(Icons.health_and_safety_outlined),
                    selectedIcon: const Icon(Icons.health_and_safety),
                    selectedColor: Colors.deepPurpleAccent,
                    title: Text("home.bar.help".i18n()),
                  ),
                ],
                hasNotch: true,
                fabLocation: StylishBarFabLocation.center,
                currentIndex: index,
                notchStyle: NotchStyle.square,
                onTap: (index) {
                  controller.jumpToPage(index);
                  context.read<NavigationTabsBloc>().add(
                    NavigationTabsEvent.changeTab(index: index),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          goPage(context: context, destination: CallScreen());
        },
        backgroundColor: Colors.green,
        child: Icon(CupertinoIcons.phone_fill, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: NotificationCenterScreen(
                  notifications: mockNotifications,
                ),
              ),
            ),
            Center(child: Marketplace()),
            Center(child: ServicesList()),
            Center(child: Text('Profile')),
          ],
        ),
      ),
    );
  }
}
