import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'di.config.dart';

final getIt = GetIt.instance;

@injectableInit
Future<void> setupInjection({
  required String envString,
}) async =>
    $initGetIt(
      getIt,
      environment: envString,
    );