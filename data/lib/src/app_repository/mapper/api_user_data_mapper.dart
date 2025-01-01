import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@Injectable()
class ApiUserDataMapper extends BaseDataMapper<ApiUserData, User>
    with DataMapperMixin<ApiUserData, User> {
  final ApiMediaDataMapper _apiMediaDataMapper;

  ApiUserDataMapper(
    this._apiMediaDataMapper,
  );

  @override
  User mapToEntity(ApiUserData? data) {
    return User();
  }

  @override
  ApiUserData mapToData(User entity) {
    return ApiUserData();
  }
}
