import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../services.dart';

@LazySingleton()
class RemotePushNotificationService with LogMixin {
  final LocalPushNotificationService _localPushNotificationService;
  final AppNotificationServiceMapper _appNotificationServiceMapper;
  final RegisterFcmTokenUseCase _registerFcmTokenUseCase;

  RemotePushNotificationService(
    this._localPushNotificationService,
    this._appNotificationServiceMapper,
    this._registerFcmTokenUseCase,
  );

  static Future<void> init() async {
    final firebaseCloudMessaging = FirebaseMessaging.instance;
    final isNotificationAvailable = await firebaseCloudMessaging.isSupported();
    if (!isNotificationAvailable) {
      return;
    }
    await firebaseCloudMessaging.requestPermission(
      alert: true,
      badge: true,
      announcement: true,
      criticalAlert: true,
      provisional: false,
      sound: true,
    );
  }

  Future<void> registerFcmToken() async {
    await FirebaseMessaging.instance.getToken().then(
      (fcmToken) async {
        if (fcmToken != null) {
          await _registerFcmTokenUseCase.execute(
            RegisterFcmTokenInput(fcmToken: fcmToken),
          );
        }
      },
      onError: (error) {
        logE("Failed to get FCM token: $error");
      },
    );
    FirebaseMessaging.instance.onTokenRefresh.listen(
      (fcmToken) async {
        await _registerFcmTokenUseCase.execute(
          RegisterFcmTokenInput(fcmToken: fcmToken),
        );
      },
      onError: (error) {
        logE("Failed to get FCM token: $error");
      },
    );
  }

  Future<void> onBackgroundNotificationReceived(
    RemoteMessage remoteMessage,
  ) async {
    await _localPushNotificationService.notify(
      _appNotificationServiceMapper.mapToOutput(remoteMessage),
    );
  }

  Future<void> onForegroundNotificationReceived(
    RemoteMessage remoteMessage,
  ) async {
    await _localPushNotificationService.notify(
      _appNotificationServiceMapper.mapToOutput(remoteMessage),
    );
  }
}
