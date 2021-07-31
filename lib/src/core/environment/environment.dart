import 'dart:async';
import 'package:flutter/material.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import '../../presentation/app.dart';
import '../dependency_injection/di.dart';
import '../logger/interface.dart';

const _envStringInstanceName = 'EnvString';

String get kAppEnvString => getIt<String>(
      instanceName: _envStringInstanceName,
    );

abstract class Env {
  static const dev = 'dev';
  static const prod = 'prod';
  static WidgetsBinding ensureInitialized() {
    if (WidgetsBinding.instance == null) WidgetsFlutterBinding();
    return WidgetsBinding.instance!;
  }

  static Future<void> start(
    String envString,
  ) async {
    ensureInitialized();

    getIt.registerLazySingleton<String>(
      () => envString,
      instanceName: _envStringInstanceName,
    );

    await setupInjection(
      envString: envString,
    );
    runZonedGuarded(
        () async => envString == prod
            ? SentryFlutter.init(
                (options) => options
                  ..dsn = 'sentry.io'
                  ..environment = kAppEnvString,
                appRunner: () => runApp(
                  MyApp(
                    isProduction: true,
                  ),
                ),
              )
            : runApp(
                MyApp(
                  isProduction: false,
                ),
              ), (Object e, StackTrace sT) {
      try {
        kAppLogger.wtf(
          e,
          problem: e,
          stackTrace: sT,
        );
      } catch (_e, _sT) {
        kAppLogger.wtf(
          'The problem could not be posted: $e',
          problem: _e,
          stackTrace: _sT,
          shouldPostIssue: false,
        );
        kAppLogger.wtf(
          'Original problem:\n$e',
          problem: e,
          stackTrace: sT,
          shouldPostIssue: false,
        );
      }
    });
  }
}
