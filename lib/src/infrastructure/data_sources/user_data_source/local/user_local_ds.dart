import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:structure/src/infrastructure/models/user_model/user_model.dart';
part 'user_local_ds.freezed.dart';

abstract class UserLocalDs {
  ///EXCEPTION:[StoreUserError]
  Future<void> storeUser({required UserModel userModel});
}

@freezed
class StoreUserError with _$StoreUserError {
  const factory StoreUserError.unexpected() = _StoreUserErrorUnexpected;
  const factory StoreUserError.userBoxNotFound() =
      _StoreUserErrorUserBoxNotFound;
}
