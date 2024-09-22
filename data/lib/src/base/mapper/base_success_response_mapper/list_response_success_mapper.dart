import 'package:services/services.dart';
import '../../../../../../data.dart';

class ListResponseSuccessMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, ListResponse<T>> {
  @override
  ListResponse<T>? mapToDataModel({
    required response,
    Decoder<T>? decoder,
  }) {
    return decoder != null && response is Map<String, dynamic>
        ? ListResponse.fromJson(
            response,
            (json) => decoder(json),
          )
        : null;
  }
}
