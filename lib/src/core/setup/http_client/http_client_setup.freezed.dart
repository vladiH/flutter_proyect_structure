// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'http_client_setup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HttpClientSetupTearOff {
  const _$HttpClientSetupTearOff();

  _HttpClientSetup call(
      {required HttpProtocol httpProtocol,
      required String host,
      required int port,
      required String endpointsBasePath,
      required Duration connectionTimeout}) {
    return _HttpClientSetup(
      httpProtocol: httpProtocol,
      host: host,
      port: port,
      endpointsBasePath: endpointsBasePath,
      connectionTimeout: connectionTimeout,
    );
  }
}

/// @nodoc
const $HttpClientSetup = _$HttpClientSetupTearOff();

/// @nodoc
mixin _$HttpClientSetup {
  HttpProtocol get httpProtocol => throw _privateConstructorUsedError;
  String get host => throw _privateConstructorUsedError;
  int get port => throw _privateConstructorUsedError;
  String get endpointsBasePath => throw _privateConstructorUsedError;
  Duration get connectionTimeout => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HttpClientSetupCopyWith<HttpClientSetup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HttpClientSetupCopyWith<$Res> {
  factory $HttpClientSetupCopyWith(
          HttpClientSetup value, $Res Function(HttpClientSetup) then) =
      _$HttpClientSetupCopyWithImpl<$Res>;
  $Res call(
      {HttpProtocol httpProtocol,
      String host,
      int port,
      String endpointsBasePath,
      Duration connectionTimeout});
}

/// @nodoc
class _$HttpClientSetupCopyWithImpl<$Res>
    implements $HttpClientSetupCopyWith<$Res> {
  _$HttpClientSetupCopyWithImpl(this._value, this._then);

  final HttpClientSetup _value;
  // ignore: unused_field
  final $Res Function(HttpClientSetup) _then;

  @override
  $Res call({
    Object? httpProtocol = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? endpointsBasePath = freezed,
    Object? connectionTimeout = freezed,
  }) {
    return _then(_value.copyWith(
      httpProtocol: httpProtocol == freezed
          ? _value.httpProtocol
          : httpProtocol // ignore: cast_nullable_to_non_nullable
              as HttpProtocol,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      endpointsBasePath: endpointsBasePath == freezed
          ? _value.endpointsBasePath
          : endpointsBasePath // ignore: cast_nullable_to_non_nullable
              as String,
      connectionTimeout: connectionTimeout == freezed
          ? _value.connectionTimeout
          : connectionTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$HttpClientSetupCopyWith<$Res>
    implements $HttpClientSetupCopyWith<$Res> {
  factory _$HttpClientSetupCopyWith(
          _HttpClientSetup value, $Res Function(_HttpClientSetup) then) =
      __$HttpClientSetupCopyWithImpl<$Res>;
  @override
  $Res call(
      {HttpProtocol httpProtocol,
      String host,
      int port,
      String endpointsBasePath,
      Duration connectionTimeout});
}

/// @nodoc
class __$HttpClientSetupCopyWithImpl<$Res>
    extends _$HttpClientSetupCopyWithImpl<$Res>
    implements _$HttpClientSetupCopyWith<$Res> {
  __$HttpClientSetupCopyWithImpl(
      _HttpClientSetup _value, $Res Function(_HttpClientSetup) _then)
      : super(_value, (v) => _then(v as _HttpClientSetup));

  @override
  _HttpClientSetup get _value => super._value as _HttpClientSetup;

  @override
  $Res call({
    Object? httpProtocol = freezed,
    Object? host = freezed,
    Object? port = freezed,
    Object? endpointsBasePath = freezed,
    Object? connectionTimeout = freezed,
  }) {
    return _then(_HttpClientSetup(
      httpProtocol: httpProtocol == freezed
          ? _value.httpProtocol
          : httpProtocol // ignore: cast_nullable_to_non_nullable
              as HttpProtocol,
      host: host == freezed
          ? _value.host
          : host // ignore: cast_nullable_to_non_nullable
              as String,
      port: port == freezed
          ? _value.port
          : port // ignore: cast_nullable_to_non_nullable
              as int,
      endpointsBasePath: endpointsBasePath == freezed
          ? _value.endpointsBasePath
          : endpointsBasePath // ignore: cast_nullable_to_non_nullable
              as String,
      connectionTimeout: connectionTimeout == freezed
          ? _value.connectionTimeout
          : connectionTimeout // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc

class _$_HttpClientSetup extends _HttpClientSetup {
  const _$_HttpClientSetup(
      {required this.httpProtocol,
      required this.host,
      required this.port,
      required this.endpointsBasePath,
      required this.connectionTimeout})
      : super._();

  @override
  final HttpProtocol httpProtocol;
  @override
  final String host;
  @override
  final int port;
  @override
  final String endpointsBasePath;
  @override
  final Duration connectionTimeout;

  @override
  String toString() {
    return 'HttpClientSetup(httpProtocol: $httpProtocol, host: $host, port: $port, endpointsBasePath: $endpointsBasePath, connectionTimeout: $connectionTimeout)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _HttpClientSetup &&
            (identical(other.httpProtocol, httpProtocol) ||
                const DeepCollectionEquality()
                    .equals(other.httpProtocol, httpProtocol)) &&
            (identical(other.host, host) ||
                const DeepCollectionEquality().equals(other.host, host)) &&
            (identical(other.port, port) ||
                const DeepCollectionEquality().equals(other.port, port)) &&
            (identical(other.endpointsBasePath, endpointsBasePath) ||
                const DeepCollectionEquality()
                    .equals(other.endpointsBasePath, endpointsBasePath)) &&
            (identical(other.connectionTimeout, connectionTimeout) ||
                const DeepCollectionEquality()
                    .equals(other.connectionTimeout, connectionTimeout)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(httpProtocol) ^
      const DeepCollectionEquality().hash(host) ^
      const DeepCollectionEquality().hash(port) ^
      const DeepCollectionEquality().hash(endpointsBasePath) ^
      const DeepCollectionEquality().hash(connectionTimeout);

  @JsonKey(ignore: true)
  @override
  _$HttpClientSetupCopyWith<_HttpClientSetup> get copyWith =>
      __$HttpClientSetupCopyWithImpl<_HttpClientSetup>(this, _$identity);
}

abstract class _HttpClientSetup extends HttpClientSetup {
  const factory _HttpClientSetup(
      {required HttpProtocol httpProtocol,
      required String host,
      required int port,
      required String endpointsBasePath,
      required Duration connectionTimeout}) = _$_HttpClientSetup;
  const _HttpClientSetup._() : super._();

  @override
  HttpProtocol get httpProtocol => throw _privateConstructorUsedError;
  @override
  String get host => throw _privateConstructorUsedError;
  @override
  int get port => throw _privateConstructorUsedError;
  @override
  String get endpointsBasePath => throw _privateConstructorUsedError;
  @override
  Duration get connectionTimeout => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$HttpClientSetupCopyWith<_HttpClientSetup> get copyWith =>
      throw _privateConstructorUsedError;
}
