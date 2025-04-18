import 'dart:convert';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../services.dart';

@Injectable()
class AppNotificationServiceMapper
    extends BaseServiceMapper<RemoteMessage, AppNotification> {
  final AppNotificationTypeServiceMapper _appNotificationTypeServiceMapper;
  AppNotificationServiceMapper(
    this._appNotificationTypeServiceMapper,
  );

  @override
  AppNotification mapToOutput(RemoteMessage? data) {
    return AppNotification(
      notificationId: data?.messageId ?? AppNotification.defaultNotificationId,
      image: AppNotification.defaultImage,
      title: data?.notification?.title ?? AppNotification.defaultTitle,
      message: (jsonDecode(data?.notification?.body ?? '{}')
              as Map<String, dynamic>?)?["message"] ??
          AppNotification.defaultMessage,
      notificationType: _appNotificationTypeServiceMapper.mapToOutput(
        data?.messageType,
      ),
    );
  }
}
