import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';

@module
abstract class ColorfulLoggerModule {
  @lazySingleton
  Logger get appLogger => Logger(
        level: Level.debug,
        printer: PrettyPrinter(
          errorMethodCount: 10,
        ),
      );
}
