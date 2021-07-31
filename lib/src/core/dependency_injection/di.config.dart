// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:dio/dio.dart' as _i11;
import 'package:get_it/get_it.dart' as _i1;
import 'package:hive/hive.dart' as _i4;
import 'package:injectable/injectable.dart' as _i2;
import 'package:logger/logger.dart' as _i6;

import '../../domain/facades/user_facade.dart' as _i16;
import '../../infrastructure/data_sources/user_data_source/local/external/user_adapter/documents/user_document.dart'
    as _i10;
import '../../infrastructure/data_sources/user_data_source/local/external/user_box.dart'
    as _i21;
import '../../infrastructure/data_sources/user_data_source/local/user_local_ds.dart'
    as _i12;
import '../../infrastructure/data_sources/user_data_source/local/user_local_imp_ds.dart'
    as _i13;
import '../../infrastructure/data_sources/user_data_source/remote/user_remote_ds.dart'
    as _i14;
import '../../infrastructure/data_sources/user_data_source/remote/user_remote_imp_ds.dart'
    as _i15;
import '../../infrastructure/externals/http_client/dio.dart' as _i22;
import '../../infrastructure/externals/no_sql_database/hive.dart' as _i18;
import '../../domain/facades/user_facade_imp.dart' as _i17;
import '../../presentation/routers/guards/auth_guards.dart' as _i3;
import '../logger/interface.dart' as _i7;
import '../logger/logger_imp.dart' as _i8;
import '../logger/modules.dart' as _i20;
import '../logger/sentry_imp.dart' as _i9;
import '../setup/http_client/http_client_setup.dart' as _i5;
import '../setup/setup.dart' as _i19;

const String _dev = 'dev';
const String _prod = 'prod';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final hiveModule = _$HiveModule();
  final httpClientSetupModule = _$HttpClientSetupModule();
  final colorfulLoggerModule = _$ColorfulLoggerModule();
  final userBoxModule = _$UserBoxModule();
  final dioModule = _$DioModule();
  gh.factory<_i3.AuthGuard>(() => _i3.AuthGuard());
  await gh.lazySingletonAsync<_i4.HiveInterface>(() => hiveModule.hive,
      preResolve: true);
  gh.lazySingleton<_i5.HttpClientSetup>(
      () => httpClientSetupModule.devHttpClientSetup,
      registerFor: {_dev});
  gh.lazySingleton<_i5.HttpClientSetup>(
      () => httpClientSetupModule.prodHttpClientSetup,
      registerFor: {_prod});
  gh.lazySingleton<_i6.Logger>(() => colorfulLoggerModule.appLogger);
  gh.lazySingleton<_i7.AppLogger>(
      () => _i8.ColorfulLogger(logger: get<_i6.Logger>()),
      registerFor: {_dev});
  gh.lazySingleton<_i7.AppLogger>(
      () => _i9.ColorfulSentryLogger(logger: get<_i6.Logger>()),
      registerFor: {_prod});
  await gh.lazySingletonAsync<_i4.Box<_i10.UserDocument>>(
      () => userBoxModule.fromUserBox(get<_i4.HiveInterface>()),
      instanceName: 'userBoxName',
      preResolve: true);
  gh.lazySingleton<_i11.Dio>(() => dioModule.dio(get<_i5.HttpClientSetup>()));
  gh.lazySingleton<_i12.UserLocalDs>(() => _i13.UserLocalImpDs(
      get<_i4.Box<_i10.UserDocument>>(instanceName: 'userBoxName')));
  gh.lazySingleton<_i14.UserRemoteDs>(
      () => _i15.UserRemoteImpDs(dio: get<_i11.Dio>()));
  gh.lazySingleton<_i16.UserFacade>(
      () => _i17.UserFacadeImp(userLocalDs: get<_i12.UserLocalDs>()));
  return get;
}

class _$HiveModule extends _i18.HiveModule {}

class _$HttpClientSetupModule extends _i19.HttpClientSetupModule {}

class _$ColorfulLoggerModule extends _i20.ColorfulLoggerModule {}

class _$UserBoxModule extends _i21.UserBoxModule {}

class _$DioModule extends _i22.DioModule {}
