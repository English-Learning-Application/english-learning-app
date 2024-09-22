import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@Injectable()
class ApiRandomUserNameDataMapper
    extends BaseDataMapper<ApiRandomUserNameData, RandomUserName> {
  ApiRandomUserNameDataMapper();

  @override
  RandomUserName mapToEntity(ApiRandomUserNameData? data) {
    return RandomUserName(
      firstName: data?.first ?? RandomUserName.defaultFirstName,
      lastName: data?.last ?? RandomUserName.defaultLastName,
      title: data?.title ?? RandomUserName.defaultTitle,
    );
  }
}
