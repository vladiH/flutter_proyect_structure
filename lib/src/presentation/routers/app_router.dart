import 'package:auto_route/auto_route.dart';
import 'package:auto_route/annotations.dart';
import 'package:structure/src/presentation/routers/guards/auth_guards.dart';
import 'package:structure/src/presentation/views/login/screen.dart';

@CustomAutoRouter(
  routes: [
    CustomRoute(page: ScreenLogin, initial: true, guards: [AuthGuard]),
  ],
)
class $AppRouter {}
