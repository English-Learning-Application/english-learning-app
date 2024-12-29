abstract class NotificationRepository {
  const NotificationRepository();
  Future<void> registerFcmToken({required String token});
  Future<void> removeFcmToken();
}
