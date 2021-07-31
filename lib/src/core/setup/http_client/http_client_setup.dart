import 'package:freezed_annotation/freezed_annotation.dart';

part 'http_client_setup.freezed.dart';

@freezed
abstract class HttpClientSetup implements _$HttpClientSetup {
  const factory HttpClientSetup({
    required HttpProtocol httpProtocol,
    required String host,
    required int port,
    required String endpointsBasePath,
    required Duration connectionTimeout,
  }) = _HttpClientSetup;

  const HttpClientSetup._();

  String get httpSchema {
    String _schema;

    switch (httpProtocol) {
      case HttpProtocol.http:
        _schema = 'http://';
        break;
      case HttpProtocol.https:
        _schema = 'https://';
        break;
    }

    return _schema;
  }

  String get baseUrl {
    final _schema = httpSchema;
    final _host = host;
    final _port = port;

    return '$_schema$_host:$_port';
  }

  String get baseUrlWithEndpointsBasePath => '$baseUrl$endpointsBasePath';
}

enum HttpProtocol {
  http,
  https,
}