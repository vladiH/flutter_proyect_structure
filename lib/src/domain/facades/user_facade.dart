import 'package:dartz/dartz.dart';
import 'package:structure/src/domain/entities/user/user_entity.dart';

abstract class UserFacade {
  Future<Either<dynamic, void>> storeUser(
    UserEntity userEntity,
  );
}
