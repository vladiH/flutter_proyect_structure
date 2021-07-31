import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'user_adapter/documents/user_document.dart';

const userBoxName = "userBoxName";

@module
abstract class UserBoxModule {
  @preResolve
  @lazySingleton
  @Named(userBoxName)
  Future<Box<UserDocument>> fromUserBox(HiveInterface hive) async {
    final resultBox = await hive.openBox<UserDocument>(userBoxName);
    return resultBox;
  }
}
