import 'dart:async';

import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/widgets.dart';
import 'package:initializer/initializer.dart';
import 'package:services/services.dart';

import 'app.dart';
import 'config/app_config.dart';

void main() {
  runZonedGuarded(_runMyApp, _reportError);
}

void _reportError(Object error, StackTrace stack) {
  LogUtils.e(error, stackTrace: stack, name: 'Uncaught Error');
}

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppInitializer(AppConfig.getInstance()).init();
  runApp(const App());
}
