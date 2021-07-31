// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../views/login/screen.dart' as _i4;
import 'guards/auth_guards.dart' as _i3;

class AppRouter extends _i1.RootStackRouter {
  AppRouter(
      {_i2.GlobalKey<_i2.NavigatorState>? navigatorKey,
      required this.authGuard})
      : super(navigatorKey);

  final _i3.AuthGuard authGuard;

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    ScreenLoginRoute.name: (routeData) => _i1.CustomPage<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i4.ScreenLogin();
        },
        opaque: true,
        barrierDismissible: false)
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(ScreenLoginRoute.name, path: '/', guards: [authGuard])
      ];
}

class ScreenLoginRoute extends _i1.PageRouteInfo {
  const ScreenLoginRoute() : super(name, path: '/');

  static const String name = 'ScreenLoginRoute';
}
