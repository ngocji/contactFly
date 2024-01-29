import 'package:alice/alice.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_network/flutter_network.dart';
import 'package:showslinger/src/di/database_module.dart';
import 'package:showslinger/src/di/routes_module.dart';

Future<dynamic> inject(GetIt sl) async {
  sl.registerLazySingleton(() => NavigationService());
  sl.registerLazySingleton(() => ModuleManagement());

  sl<ModuleManagement>().addModules([
    CommonModule(),
    RoutesModule(),
    DatabaseModule()
  ]);
  sl<ModuleManagement>().inject(sl);
}

void setupDebug(GetIt sl, bool kDebugMode) {
  if (kDebugMode) {
    sl.registerLazySingleton(() => Alice(
          showNotification: false,
          showInspectorOnShake: false,
        ));
    sl<Dio>().interceptors.add(sl<Alice>().getDioInterceptor());
    sl<Alice>().setNavigatorKey(sl<NavigationService>().navigatorKey);
  }
}
