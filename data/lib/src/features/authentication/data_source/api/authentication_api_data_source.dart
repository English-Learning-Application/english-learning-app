import 'package:injectable/injectable.dart';

import '../../../../../data.dart';

@lazySingleton
class AuthenticationApiDataSource {
  final NonAuthAppServerApiClient _nonAuthAppServerApiClient;

  const AuthenticationApiDataSource(this._nonAuthAppServerApiClient);
}
