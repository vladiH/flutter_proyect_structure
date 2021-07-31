import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:structure/src/core/environment/environment.dart';

import 'interface.dart';

@LazySingleton(as: AppLogger, env: [Env.dev])
class ColorfulLogger extends AppLogger {
  final Logger logger;

  ColorfulLogger({
    required this.logger,
  });

  @override
  void d(dynamic message) {
    logger.d(message);
  }

  @override
  void i(dynamic message) {
    logger.i(message);
  }

  @override
  void w(dynamic message) {
    logger.w(message);
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
  }
}
