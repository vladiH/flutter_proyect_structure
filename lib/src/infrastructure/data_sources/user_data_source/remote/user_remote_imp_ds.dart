import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:structure/src/core/logger/interface.dart';
import 'package:structure/src/infrastructure/data_sources/user_data_source/remote/user_remote_ds.dart';
import 'package:structure/src/infrastructure/models/user_model/user_model.dart';

@LazySingleton(as: UserRemoteDs)
class UserRemoteImpDs extends UserRemoteDs {
  final Dio dio;
  UserRemoteImpDs({required this.dio});
  @override
  Future<UserModel> getUser(
      {required String dni, required String birthDate}) async {
    try {
      final result = await dio.post(
        '/user',
        data: {'dni': dni, 'birthDate': birthDate},
        options: Options(
          contentType: Headers.jsonContentType,
        ),
      );
      return UserModel.fromJson(result as Map<String, dynamic>);
    } on DioError catch (e, stackTrace) {
      switch (e.type) {
        case DioErrorType.connectTimeout:
        case DioErrorType.sendTimeout:
        case DioErrorType.receiveTimeout:
        case DioErrorType.other:
          kAppLogger.wtf(
            e.response?.data,
            problem: e,
            stackTrace: stackTrace,
          );
          throw GetUserError.offline();
        case DioErrorType.response:
        case DioErrorType.cancel:
          kAppLogger.wtf(
            e.response?.data,
            problem: e,
            stackTrace: stackTrace,
          );
          throw GetUserError.unexpected();
      }
    } catch (e) {
      throw GetUserError.unexpected();
    }
  }
}
