import 'dart:io';

import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:structure/src/infrastructure/data_sources/user_data_source/local/external/user_adapter/documents/user_document.dart';

@module
abstract class HiveModule {
  @preResolve
  @lazySingleton
  Future<HiveInterface> get hive async {
    late final appDir;
    if (Platform.isAndroid) {
      appDir = await getExternalStorageDirectories();
    } else if (Platform.isIOS) {
      appDir = await getApplicationSupportDirectory();
    } else {
      appDir = await getApplicationDocumentsDirectory();
    }
    final dbPath = path.join(appDir.path, 'structure');
    Hive.init(dbPath);
    Hive.registerAdapter<UserDocument>(UserDocumentAdapter());
    return Hive;
  }
}
