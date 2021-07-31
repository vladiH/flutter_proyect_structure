import 'package:hive/hive.dart';
part 'user_document.g.dart';

@HiveType(typeId: 0)
class UserDocument {
  @HiveField(0)
  String name;
  @HiveField(1)
  String lastName;
  @HiveField(2)
  String dni;
  @HiveField(3)
  DateTime birthDate;
  UserDocument(
      {required this.name,
      required this.lastName,
      required this.dni,
      required this.birthDate});
}
