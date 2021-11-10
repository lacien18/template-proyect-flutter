import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'app.dart';
import 'core/config/app_config.dart';
import 'core/enums/flavors.dart';
import 'core/navigation/destinations.dart';

Future<void> mainCommon(Flavor env) async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppConfig.forEnvironment(env);
  // statusBar
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarBrightness: Brightness.light,
    ),
  );
//block direcctions
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  final initialRoute = Destinations.home;
  runApp(App(initialRoute: initialRoute));
}
