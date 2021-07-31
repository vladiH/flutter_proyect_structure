//import 'package:injectable/injectable.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:structure/src/core/environment/environment.dart';
//import 'package:te_cuido/core/environment/env.dart';
import 'interface.dart';

@LazySingleton(as: AppLogger, env: [Env.prod])
class ColorfulSentryLogger extends AppLogger {
  final Logger logger;

  ColorfulSentryLogger({
    required this.logger,
  });

  @override
  void d(dynamic message) {
    logger.d(message);
  }

  @override
  void i(dynamic message) {
    logger.i(message);
    Sentry.captureMessage(
      message.toString(),
      //level: SentryLevel.info,
    );
  }

  @override
  void w(dynamic message) {
    logger.w(message);
    Sentry.captureMessage(
      message.toString(),
      level: SentryLevel.warning,
    );
  }

  @override
  void e(
    dynamic message, {
    required dynamic problem,
    StackTrace? stackTrace,
  }) {
    logger.e(
      message,
      problem,
      stackTrace,
    );
    Sentry.captureMessage(
      message.toString(),
      level: SentryLevel.error,
    );
  }

  @override
  void wtf(
    dynamic message, {
    required dynamic problem,
    StackTrace? stackTrace,
    bool shouldPostIssue = true,
  }) {
    logger.wtf(
      message,
      problem,
      stackTrace,
    );

    if (shouldPostIssue) {
      Sentry.captureException(
        problem,
        stackTrace: stackTrace,
      );
    }
  }

  void user(
          {required String id,
          required String name,
          required String lastName,
          required String email}) =>
      Sentry.configureScope(
        (scope) => scope
          ..user = SentryUser(
            id: id,
            username: "$name $lastName",
            email: email,
            ipAddress: '{{auto}}',
          ),
      );
}
