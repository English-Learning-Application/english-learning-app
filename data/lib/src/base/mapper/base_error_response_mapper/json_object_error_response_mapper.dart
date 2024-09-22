import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import '../../../../../../data.dart';

@Injectable()
class JsonObjectErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
      generalServerStatusCode: errorResponse?['status_code'] as int?,
      generalServerErrorId: errorResponse?['data'] as String?,
      generalMessage: errorResponse?['message'] as String?,
    );
  }
}
