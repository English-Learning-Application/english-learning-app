import 'package:freezed_annotation/freezed_annotation.dart';

import '../../logic.dart';

part 'app_notification.freezed.dart';

@freezed
class AppNotification with _$AppNotification {
  const factory AppNotification({
    @Default(AppNotification.defaultNotificationId) String notificationId,
    @Default(AppNotification.defaultNotificationType)
    NotificationType notificationType,
    @Default(AppNotification.defaultImage) String image,
    @Default(AppNotification.defaultTitle) String title,
    @Default(AppNotification.defaultMessage) String message,
    @Default(AppNotification.defaultAction) String action,
  }) = _AppNotification;

  static const defaultNotificationId = '';
  static const defaultNotificationType = NotificationType.defaultValue;
  static const defaultImage = '';
  static const defaultTitle = '';
  static const defaultAction = '';
  static const defaultMessage = '';
}
