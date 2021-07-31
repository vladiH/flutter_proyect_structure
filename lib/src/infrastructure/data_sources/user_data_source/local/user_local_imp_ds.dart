import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:structure/src/infrastructure/data_sources/user_data_source/local/external/user_adapter/documents/user_document.dart';
import 'package:structure/src/infrastructure/data_sources/user_data_source/local/user_local_ds.dart';
import 'package:structure/src/infrastructure/models/user_model/user_model.dart';
import './external/user_box.dart';

@LazySingleton(as: UserLocalDs)
class UserLocalImpDs extends UserLocalDs {
  final Box<UserDocument> userBox;

  UserLocalImpDs(
    @Named(userBoxName) this.userBox,
  );

  @override
  Future<void> storeUser({required UserModel userModel}) async {
    try {
      await userBox.put(userModel.dni, userModel as UserDocument);
    } catch (e) {
      throw StoreUserError.unexpected();
    }
  }
}
