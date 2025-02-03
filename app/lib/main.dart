import 'dart:async';

import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/widgets.dart';
import 'package:get_it/get_it.dart';
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

  FirebaseMessaging.onMessage.listen(
    (message) {
      GetIt.instance<RemotePushNotificationService>()
          .onForegroundNotificationReceived(message);
    },
  );
  FirebaseMessaging.onMessageOpenedApp.listen(_handleBackgroundMessage);
  final initialMessage = await FirebaseMessaging.instance.getInitialMessage();
  if (initialMessage != null) {
    _handleBackgroundMessage(initialMessage);
  }

  runApp(const App());
}

@pragma('vm:entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppInitializer(AppConfig.getInstance()).init();
  await GetIt.instance<RemotePushNotificationService>()
      .onBackgroundNotificationReceived(message);
}

void _handleBackgroundMessage(RemoteMessage message) {
  LogUtils.d('Handling a background message: $message');
}
