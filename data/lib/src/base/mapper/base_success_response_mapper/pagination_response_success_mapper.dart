import 'package:services/services.dart';
import '../../../../data.dart';

class PaginationResponseSuccessMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, PaginationResponse<T>> {
  @override
  PaginationResponse<T>? mapToDataModel({
    required response,
    Decoder<T>? decoder,
  }) {
    return decoder != null && response is Map<String, dynamic>
        ? PaginationResponse.fromJson(
            response,
            (json) => decoder(json),
          )
        : null;
  }
}
