import 'package:alice/alice.dart';
import 'package:alice/utils/shake_detector.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_common/flutter_common.dart';
import 'package:flutter_core/flutter_core.dart';
import 'package:flutter_widget/flutter_widget.dart';
import 'package:showslinger/router.dart';
import 'package:showslinger/src/di/app_module.dart';
import 'package:showslinger/src/ui/screen/splash/splash_screen.dart';

final sl = GetIt.instance;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await inject(sl);

  setupDebug(sl, kDebugMode);

  // todo: change statusbar here
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent, // transparent status bar
  // ));

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  ShakeDetector? _shakeDetector;

  @override
  void initState() {
    super.initState();
    _setupDebug();
  }

  void _setupDebug() {
    if (!kDebugMode) {
      return;
    }

    Future.delayed(Duration.zero, () {
      if (mounted) {
        _shakeDetector = ShakeDetector.autoStart(
          onPhoneShake: () {
            GetIt.instance<Alice>().showInspector();
          },
        );
      }
    });
  }

  @override
  void dispose() {
    _shakeDetector?.stopListening();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      navigatorKey: sl<NavigationService>().navigatorKey,
      title: 'ContactFly',
      themeMode: ThemeMode.light,
      theme: AppTheme.light().data,
      darkTheme: AppTheme.dark().data,
      locale: const Locale('en'),
      supportedLocales: const [
        Locale('en', ''),
      ],
      localizationsDelegates: LocalizationDelegate.delegates,
      initialRoute: SplashScreen.routeName,
      onGenerateRoute: generateRoute,
    );
  }
}
