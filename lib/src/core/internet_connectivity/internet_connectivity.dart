import 'package:internet_connection_checker/internet_connection_checker.dart';

Future<bool> isOnline() async {
  return InternetConnectionChecker().hasConnection;
}
