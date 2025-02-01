import 'package:injectable/injectable.dart';

import '../../../../../data.dart';

@LazySingleton()
class NotificationApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const NotificationApiDataSource(this._authAppServerApiClient);

  Future<void> registerFcmToken({required String token}) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: NotificationEndpoints.updateFcmToken,
      body: {'fcmToken': token},
    );
  }
}
