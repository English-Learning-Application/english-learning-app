import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../../../data.dart';

@Injectable()
class FirebaseStorageErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
      generalServerStatusCode: errorResponse?['error']['code'] as int?,
      generalMessage: errorResponse?['error']['message'] as String?,
    );
  }
}
