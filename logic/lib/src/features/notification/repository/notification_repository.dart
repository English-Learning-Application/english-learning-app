abstract class NotificationRepository {
  Future<void> registerFcmToken({required String token});
  Future<void> removeFcmToken();
}
