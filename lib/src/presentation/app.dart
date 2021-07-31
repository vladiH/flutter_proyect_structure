import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:structure/src/presentation/routers/guards/auth_guards.dart';
//import 'package:flutter_localizations/flutter_localizations.dart';

import '../core/dependency_injection/di.dart';
import 'routers/app_router.gr.dart';

class MyApp extends StatelessWidget {
  final bool isProduction;
  const MyApp({required this.isProduction});
  static final _appRouter = AppRouter(authGuard: getIt<AuthGuard>());
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [],
      child: MaterialApp.router(
        localizationsDelegates: const [
          //GlobalMaterialLocalizations.delegate,
          //GlobalWidgetsLocalizations.delegate,
          //GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('es'),
          Locale('en'),
        ],
        title: "APP title",
        //theme: context.appTheme,
        debugShowCheckedModeBanner: !isProduction,
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(
            //navigatorKey: _appRouter.navigatorKey,
            ),
      ),
    );
  }
}
