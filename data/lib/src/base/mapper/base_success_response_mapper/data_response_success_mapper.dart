import 'package:services/services.dart';
import '../../../../../../data.dart';

class DataResponseSuccessMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, DataResponse<T>> {
  @override
  DataResponse<T>? mapToDataModel({required response, Decoder<T>? decoder}) {
    return decoder != null && response is Map<String, dynamic>
        ? DataResponse<T>.fromJson(
            response,
            (json) => decoder(json),
          )
        : null;
  }
}
