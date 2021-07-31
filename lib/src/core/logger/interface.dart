import '../dependency_injection/di.dart';

AppLogger get kAppLogger => getIt<AppLogger>();

abstract class AppLogger {
  const AppLogger();

  void d(dynamic message);

  void i(dynamic message);

  void w(dynamic message);

  void e(
    dynamic message, {
    required dynamic problem,
    StackTrace stackTrace,
  });

  void wtf(
    dynamic message, {
    required dynamic problem,
    StackTrace stackTrace,
    bool shouldPostIssue = true,
  });
}