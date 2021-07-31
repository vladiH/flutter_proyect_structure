import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import '../../../core/logger/interface.dart';
import '../../../core/setup/http_client/http_client_setup.dart';

@module
abstract class DioModule {
  @lazySingleton
  Dio dio(HttpClientSetup httpClientSetup) {
    return Dio(
      BaseOptions(
        baseUrl: httpClientSetup.baseUrlWithEndpointsBasePath,
        connectTimeout: httpClientSetup.connectionTimeout.inMilliseconds,
        sendTimeout: httpClientSetup.connectionTimeout.inMilliseconds,
        receiveTimeout: httpClientSetup.connectionTimeout.inMilliseconds,
      ),
    )..interceptors.add(
        LoggingInterceptor(),
      );
  }
}

class LoggingInterceptor extends Interceptor {
  static const rulerLength = 80;

  @override
  Future onError(DioError dioError, ErrorInterceptorHandler handler) async {
    kAppLogger.wtf(
      dioError.log,
      problem: dioError.error ?? dioError,
    );

    return handler.next(dioError);
  }

  @override
  Future onRequest(RequestOptions requestOptions, RequestInterceptorHandler handler) async {
    kAppLogger.d(
      requestOptions.log,
    );

    return handler.next(requestOptions);
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async {
    kAppLogger.d(response.log);

    return handler.next(response);
  }
}

extension _ExtendedDioError on DioError {
  String get log {
    final logStringBuffer = StringBuffer();
  
    logStringBuffer.writeln('ERROR');
    logStringBuffer.writeln('Error type: $type');
    logStringBuffer.writeln('Error message: $message');
    logStringBuffer.writeln(requestOptions.log);

    if (response != null) {
      logStringBuffer.writeln(response!.log);
    }

    return logStringBuffer.toString();
  }
}

extension _ExtendedRequestOptions on RequestOptions {
  String get log {
    final logStringBuffer = StringBuffer();

    logStringBuffer.writeln('REQUEST');
    logStringBuffer.write(method.toUpperCase());
    logStringBuffer.writeln(' $baseUrl $path ');

    if (headers.isNotEmpty) {
      logStringBuffer.writeln('HEADERS:');
      for (final header in headers.entries) {
        logStringBuffer.writeln('\t${header.key}: ${header.value}');
      }
    }

    if (queryParameters.isNotEmpty) {
      logStringBuffer.writeln('QUERY PARAMS:');
      for (final queryParam in queryParameters.entries) {
        logStringBuffer.writeln('\t${queryParam.key}: ${queryParam.value}');
      }
    }

    if (data != null) {
      logStringBuffer.writeln('BODY:');
      logStringBuffer.writeln('$data');
    }

    return logStringBuffer.toString();
  }
}

extension _ExtendedResponse on Response {
  String get log {
    final logStringBuffer = StringBuffer();

    logStringBuffer.writeln('RESPONSE');
    
    
    logStringBuffer.write(requestOptions.method.toUpperCase());
    logStringBuffer.writeln(' ${requestOptions.baseUrl}${requestOptions.path}');

    logStringBuffer.writeln('Status code: ${statusCode ?? "---"}');
    logStringBuffer.writeln('Status message: ${statusMessage ?? "-"}');

    if (headers.map.isNotEmpty) {
      logStringBuffer.writeln('HEADERS:');
      for (final header in headers.map.entries) {
        logStringBuffer.writeln('\t${header.key}: ${header.value}');
      }
    }

    if (data != null) {
      logStringBuffer.writeln('BODY:');
      logStringBuffer.writeln('$data');
    }

    return logStringBuffer.toString();
  }
}