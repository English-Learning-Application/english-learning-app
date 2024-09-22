import 'package:services/services.dart';
import '../../../../../../data.dart';

class PlainSuccessResponseMapper<T extends Object>
    extends BaseSuccessResponseMapper<T, T> {
  @override
  T? mapToDataModel({required response, Decoder<T>? decoder}) {
    return response != null ? response as T : null;
  }
}
