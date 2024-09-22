import 'package:services/services.dart';
import '../../../../../../data.dart';

class JsonArraySuccessResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, List<T>> {
  @override
  List<T>? mapToDataModel({required response, Decoder<T>? decoder}) {
    return decoder != null && response is List
        ? response
            .map((e) => decoder(e as Map<String, dynamic>))
            .toList(growable: false)
        : null;
  }
}
