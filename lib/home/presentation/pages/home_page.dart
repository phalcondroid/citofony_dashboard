import 'package:citofony_dashboard/home/presentation/bloc/home/home_bloc.dart';
import 'package:citofony_dashboard/home/presentation/bloc/navigation_tabs/navigation_tabs_bloc.dart';
import 'package:citofony_dashboard/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => GetIt.instance.get<HomeBloc>()),
        BlocProvider(create: (_) => GetIt.instance.get<NavigationTabsBloc>()),
      ],
      child: const HomeView(),
    );
  }
}
