import 'package:injectable/injectable.dart';

import '../environment/environment.dart';
import 'http_client/http_client_setup.dart';

@module
abstract class HttpClientSetupModule {
  static const _connectionTimeout = Duration(seconds: 1);
  @LazySingleton(env: [Env.dev])
  HttpClientSetup get devHttpClientSetup => const HttpClientSetup(
        httpProtocol: HttpProtocol.http,
        host: 'www.proyect.app',
        port: 80,
        endpointsBasePath: '/pruebas/public/api',
        connectionTimeout: _connectionTimeout,
      );

  @LazySingleton(env: [Env.prod])
  HttpClientSetup get prodHttpClientSetup => const HttpClientSetup(
        httpProtocol: HttpProtocol.https,
        host: 'wwww.google.com',
        port: 443,
        endpointsBasePath: '/pruebas/public/api',
        connectionTimeout: _connectionTimeout,
      );
}