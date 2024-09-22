import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import '../../../../../../data.dart';

@Injectable()
class LineErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
      generalMessage: errorResponse?['error_description'] as String?,
    );
  }
}
