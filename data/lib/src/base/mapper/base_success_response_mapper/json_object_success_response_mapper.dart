import 'package:services/services.dart';
import '../../../../../../data.dart';

class JsonObjectSuccessResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required response, Decoder<T>? decoder}) {
    return decoder != null && response is Map<String, dynamic>
        ? decoder(response)
        : null;
  }
}
