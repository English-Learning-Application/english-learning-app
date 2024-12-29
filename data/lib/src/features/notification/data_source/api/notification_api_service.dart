import 'package:injectable/injectable.dart';

import '../../../../../data.dart';

@LazySingleton()
class NotificationApiDataSource {
  final AuthAppServerApiClient _authAppServerApiClient;

  const NotificationApiDataSource(this._authAppServerApiClient);
}
