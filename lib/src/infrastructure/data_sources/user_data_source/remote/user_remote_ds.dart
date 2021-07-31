import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structure/src/infrastructure/models/user_model/user_model.dart';
part 'user_remote_ds.freezed.dart';

abstract class UserRemoteDs {
  ///Exception:[GetUserError]
  Future<UserModel> getUser({required String dni, required String birthDate});
}

@freezed
class GetUserError with _$GetUserError {
  const factory GetUserError.unexpected() = _GetUserErrorUnexpected;
  const factory GetUserError.offline() = _GetUserErrorOffline;
}
