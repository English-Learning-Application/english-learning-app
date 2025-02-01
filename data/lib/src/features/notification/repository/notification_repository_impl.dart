import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../data_source/api/notification_api_service.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl extends NotificationRepository {
  final NotificationApiDataSource _notificationApiDataSource;

  const NotificationRepositoryImpl(this._notificationApiDataSource);

  @override
  Future<void> registerFcmToken({required String token}) async {
    await _notificationApiDataSource.registerFcmToken(token: token);
  }
}
