import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/src/ui/screen/common_components/common_component_screen.dart';
import 'package:showslinger/src/ui/screen/login/login_screen.dart';
import 'package:showslinger/src/ui/screen/scan_qr/scan_qr_not_valid.dart';
import 'package:showslinger/src/ui/screen/scan_qr/scan_qr_scanned.dart';
import 'package:showslinger/src/ui/screen/scan_qr/scan_qr_screen.dart';
import 'package:showslinger/src/ui/screen/scan_qr/scan_qr_success.dart';
import 'package:showslinger/src/ui/screen/splash/splash_screen.dart';

class AppModule extends Module {
  @override
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case SplashScreen.routeName:
        return getPageRoute(const SplashScreen(), settings);
      case LoginScreen.routeName:
        return getPageRoute(const LoginScreen(), settings);
      case ScanQRScreen.routeName:
        return getPageRoute(const ScanQRScreen(), settings);
      case CommonComponentScreen.routeName:
        return getPageRoute(const CommonComponentScreen(), settings);
        default:
        return DefaultRoute.notFound(settings);
    }
  }

  @override
  Future inject(GetIt sl) async {
  }
}
