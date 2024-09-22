import 'dart:io';
import 'dart:math';

import 'package:logic/logic.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';

import '../../../services.dart';

@LazySingleton()
class LocalPushNotificationService with LogMixin {
  static const _channel = NotificationConstants.channel;
  static const _channelName = NotificationConstants.channelName;
  static const _channelDescription = NotificationConstants.channelDescription;
  static const _androidDefaultIcon = NotificationConstants.androidDefaultIcon;
  static const _bitCount = NotificationConstants.bitCount;

  int get _randomNotificationId => Random().nextInt(pow(2, _bitCount).toInt());

  static Future<void> init() async {
    const androidInit = AndroidInitializationSettings(_androidDefaultIcon);

    const iOSInit = DarwinInitializationSettings(
      requestAlertPermission: false,
      requestBadgePermission: false,
      requestSoundPermission: false,
    );

    const init = InitializationSettings(
      android: androidInit,
      iOS: iOSInit,
    );

    await Future.wait(
      [
        FlutterLocalNotificationsPlugin().initialize(
          init,
        ),
      ],
    );

    await FlutterLocalNotificationsPlugin()
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(
          const AndroidNotificationChannel(
            _channel,
            _channelName,
            description: _channelDescription,
            importance: Importance.high,
          ),
        );
  }

  Future<void> notify(AppNotification notification) async {
    File? imageFile;
    if (notification.image.isNotEmpty) {
      imageFile = await FileUtils.getImageFileFromUrl(notification.image);
      logD("Downloaded image file: $imageFile");
    }

    final androidPlatformChannelSpecifics = AndroidNotificationDetails(
      _channel,
      _channelName,
      channelDescription: _channelDescription,
      importance: Importance.max,
      priority: Priority.high,
      showWhen: true,
      autoCancel: true,
      enableVibration: true,
      playSound: true,
      styleInformation: imageFile != null
          ? BigPictureStyleInformation(
              FilePathAndroidBitmap(imageFile.path),
              hideExpandedLargeIcon: true,
            )
          : null,
    );
    const iOSPlatformChannelSpecifics = DarwinNotificationDetails();

    final platformChannelSpecifics = NotificationDetails(
      android: androidPlatformChannelSpecifics,
      iOS: iOSPlatformChannelSpecifics,
    );

    await FlutterLocalNotificationsPlugin()
        .show(
          _randomNotificationId,
          notification.title,
          notification.message,
          platformChannelSpecifics,
        )
        .onError(
          (error, stackTrace) => logE(
            'Can not show notification cause $error',
          ),
        );
  }
}
