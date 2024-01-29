import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/data/local/DatabaseProvider.dart';
import 'package:sqflite/sqflite.dart';

class DatabaseModule extends Module {
  @override
  Route generateRoute(RouteSettings settings) {
    return DefaultRoute.notFound(settings);
  }

  @override
  Future inject(GetIt sl) async {
    await _setupDatabase(sl);
  }

  Future _setupDatabase(GetIt sl) async {
    Database database = await DatabaseProvider.initDatabase();
    sl.registerLazySingleton(() => DatabaseProvider(database: database));
  }
}
