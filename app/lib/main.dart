import 'dart:async';

import 'package:app/firebase_options.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
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
  FirebaseCrashlytics.instance
      .recordError(error, stack, reason: 'flutter_uncaught_error');
}

Future<void> _runMyApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  await AppInitializer(AppConfig.getInstance()).init();
  FlutterError.onError = FirebaseCrashlytics.instance.recordFlutterFatalError;
  PlatformDispatcher.instance.onError = (error, stack) {
    FirebaseCrashlytics.instance.recordError(error, stack, fatal: true);
    return true;
  };

  FirebaseMessaging.onMessage.listen(
    (message) {
      LogUtils.d(
          'Got a message whilst in the foreground! ${message.notification?.title}');
      LogUtils.d(
          'Got a message whilst in the foreground! ${message.notification?.body}');
      LogUtils.d('Got a message whilst in the foreground! ${message.data}');
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
