import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:structure/src/domain/entities/user/user_entity.dart';
import 'package:structure/src/domain/facades/user_facade.dart';
import 'package:structure/src/infrastructure/data_sources/user_data_source/local/user_local_ds.dart';
import 'package:structure/src/infrastructure/models/user_model/model_entity.dart';

@LazySingleton(as: UserFacade)
class UserFacadeImp extends UserFacade {
  final UserLocalDs userLocalDs;
  UserFacadeImp({required this.userLocalDs});
  @override
  Future<Either<dynamic, void>> storeUser(UserEntity userEntity) async {
    try {
      await userLocalDs.storeUser(userModel: userEntity.userEntityToModel);
      return Right(null);
    } on StoreUserError catch (e) {
      return left(
          e.map(unexpected: (_) => dynamic, userBoxNotFound: (_) => dynamic));
    } catch (e) {
      return left(dynamic);
    }
  }
}
