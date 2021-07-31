import 'package:structure/src/domain/entities/user/user_entity.dart';
import 'package:structure/src/infrastructure/models/user_model/user_model.dart';

extension UserEntityToModel on UserEntity {
  UserModel get userEntityToModel => UserModel(
      name: this.name,
      lastName: this.lastName,
      dni: this.dni,
      birthDate: this.birthDate);
}
