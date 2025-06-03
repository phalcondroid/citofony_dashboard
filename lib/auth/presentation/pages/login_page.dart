import 'package:citofony_dashboard/auth/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:citofony_dashboard/auth/presentation/views/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthenticationBloc>(
      create: (_) => GetIt.instance.get<AuthenticationBloc>(),
      child: const LoginView(),
    );
  }
}
