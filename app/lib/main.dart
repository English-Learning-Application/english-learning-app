import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:initializer/initializer.dart';
import 'package:services/services.dart';

import 'app/app.dart';
import 'config/app_config.dart';

void main() {
  runZonedGuarded(_runMyApp, _reportError);
}

void _reportError(Object error, StackTrace stack) {
  LogUtils.e(error, stackTrace: stack, name: 'Uncaught Error');
}

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer(AppConfig.getInstance()).init();
  runApp(const App());
}
