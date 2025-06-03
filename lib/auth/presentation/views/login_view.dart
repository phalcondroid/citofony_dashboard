import 'dart:async';

import 'package:citofony_dashboard/auth/presentation/bloc/authentication/authentication_bloc.dart';
import 'package:citofony_dashboard/common/config/ui/helpers/pagination_utils.dart';
import 'package:citofony_dashboard/common/config/ui/helpers/standard_text.dart';
import 'package:citofony_dashboard/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:localization/localization.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _usernameCtrl = TextEditingController();
    final TextEditingController _passwordCtrl = TextEditingController();

    return Scaffold(
      appBar: null,
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          child: BlocListener<AuthenticationBloc, AuthenticationState>(
            listener: (BuildContext context, AuthenticationState state) {
              if (state == AuthenticationState.loginFailed()) {
                unawaited(
                  Alert(
                    context: context,
                    type: AlertType.error,
                    title: "login.alerts.error".i18n(),
                    desc: "login.alerts.error_desc".i18n(),
                  ).show(),
                );
              }
              if (state == AuthenticationState.logged()) {
                goPage(context: context, destination: HomePage());
              }
            },
            child: Form(
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 30.0),
                child: Row(
                  children: [
                    Expanded(
                      child: Column(
                        children: <Widget>[
                          const Spacer(flex: 2),
                          Expanded(
                            child: Image.asset("assets/images/logo.png"),
                            flex: 2,
                          ),
                          Expanded(
                            child: Center(
                              child: StandardText(
                                text: "general.appname".i18n(),
                                size: TextSize.big,
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _usernameCtrl,
                              decoration: InputDecoration(
                                icon: Icon(Icons.person),
                                hintText: "login.user".i18n(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: TextFormField(
                              controller: _passwordCtrl,
                              obscureText: true,
                              decoration: InputDecoration(
                                icon: Icon(Icons.lock),
                                hintText: "login.pass".i18n(),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: SizedBox(
                                width: MediaQuery.sizeOf(context).width * 0.70,
                                child: ElevatedButton(
                                  onPressed: () async {
                                    context.read<AuthenticationBloc>().add(
                                      AuthenticationEvent.doLogin(
                                        username: _usernameCtrl.text,
                                        password: _passwordCtrl.text,
                                      ),
                                    );
                                  },
                                  child: StandardText(
                                    text: "login.btn_login".i18n(),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: StandardText(
                              text: "login.terms_and_contitions".i18n(),
                            ),
                          ),
                          const Spacer(flex: 3),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
