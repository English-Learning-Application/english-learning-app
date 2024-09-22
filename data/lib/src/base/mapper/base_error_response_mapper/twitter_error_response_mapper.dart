import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import '../../../../../../data.dart';

@Injectable()
class TwitterErrorResponseMapper
    extends BaseErrorResponseMapper<Map<String, dynamic>> {
  @override
  ServerError mapToServerError(Map<String, dynamic>? errorResponse) {
    return ServerError(
      generalMessage:
          // ignore: avoid-dynamic
          ((errorResponse?['errors'] as List<dynamic>?)?.firstOrNull
                  as Map<String, dynamic>)['message'] as String? ??
              '',
    );
  }
}
