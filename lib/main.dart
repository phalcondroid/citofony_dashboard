import 'package:citofony_dashboard/auth/presentation/pages/login_page.dart';
import 'package:citofony_dashboard/common/config/app/citofony_config.dart';
import 'package:citofony_dashboard/common/config/ui/theme/theme.dart';
import 'package:clean_network/clean_network.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:localization/localization.dart';

import 'common/config/notifications/local_notification.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CleanNetworkToolsInitializer(config: CitofonyConfig()).init();
  await initializeNotifications();
  await SystemChrome.setPreferredOrientations(<DeviceOrientation>[
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(MyApp());
  });
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    LocalJsonLocalization.delegate.directories = <String>["assets/i18n"];
    return MaterialApp(
      title: 'Citofony',
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.system,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        LocalJsonLocalization.delegate,
      ],
      supportedLocales: [Locale('en'), Locale('es')],
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
