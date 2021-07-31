import 'package:injectable/injectable.dart';
import 'package:auto_route/auto_route.dart';

@injectable
class AuthGuard extends AutoRouteGuard {
  AuthGuard();

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    resolver.next();
  }
}
