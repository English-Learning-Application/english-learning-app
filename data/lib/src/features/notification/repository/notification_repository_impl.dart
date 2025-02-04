import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';
import '../data_source/api/notification_api_service.dart';

@LazySingleton(as: NotificationRepository)
class NotificationRepositoryImpl extends NotificationRepository {
  final NotificationApiDataSource _notificationApiDataSource;
  final AppPreferences _appPreferences;

  const NotificationRepositoryImpl(
    this._notificationApiDataSource,
    this._appPreferences,
  );

  @override
  Future<void> registerFcmToken({required String token}) async {
    await Future.wait(
      [
        _notificationApiDataSource.registerFcmToken(token: token),
        _appPreferences.saveDeviceFcmToken(token),
      ],
    );
  }

  @override
  Future<void> deleteFcmTokens() async {
    final fcmTokens = await _appPreferences.getDeviceFcmTokens();
    await _notificationApiDataSource.deleteFcmTokens(fcmTokens: fcmTokens);
    await _appPreferences.clearDeviceFcmTokens();
  }
}
