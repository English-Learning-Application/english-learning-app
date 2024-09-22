import 'package:injectable/injectable.dart';
import 'package:services/services.dart';
import '../../../../../../data.dart';

@Injectable()
class JsonArrayErrorResponseMapper
    extends BaseErrorResponseMapper<List<dynamic>> {
  @override
  ServerError mapToServerError(List? errorResponse) {
    return ServerError(
      errors: errorResponse
              ?.map(
                (e) => ServerErrorDetail(
                  serverStatusCode: e['code'] as int?,
                  message: e['message'] as String?,
                ),
              )
              .toList(
                growable: false,
              ) ??
          [],
    );
  }
}
