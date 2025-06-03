import 'package:citofony_dashboard/common/config/di/injectable_config.dart';
import 'package:citofony_dashboard/common/config/notifications/firebase_api.dart';
import 'package:citofony_dashboard/common/config/permissions/permisions_handler.dart';
import 'package:clean_network/clean_network.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';
import 'package:logging/logging.dart';
import 'package:pretty_string/pretty_string.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CitofonyConfig extends CleanNetworkToolsConfig {
  Logger logger = Logger("CitofonyConfig");

  @override
  List<InstanceConfig> get instanceConfigs => <InstanceConfig>[
    InstanceConfig(
      options: HttpBaseOptions(baseUrl: dotenv.maybeGet("BASE_URL") ?? ""),
      interceptor: CleanNetworkInterceptor(
        after: (
          Response<dynamic> response,
          ResponseInterceptorHandler handler,
        ) {
          return response;
        },
        catchError: (
          CleanNetworkHttpException e,
          ErrorInterceptorHandler handler,
        ) {
          logger.info(
            {
              "message": e.message,
              "error": e.error,
              "data": e.response.data,
              "code": e.response.statusCode,
              "trace": e.stackTrace,
            }.toPrettier(),
          );
        },
      ),
    ),
  ];

  @override
  CleanNetworkInjector get injector => CleanNetworkInjector(
    inject: (GetIt injector) async {
      logger.info("Initializing Alvic injector");
      await dotenv.load();
      configureDependencies();
      final String? token = await FirebaseApi().initialize();
      print("FCM token: $token");
      SharedPreferences pref = await SharedPreferences.getInstance();
      pref.setString("firebase_token", token ?? "no");
      await requestPermissions();
    },
  );
}
