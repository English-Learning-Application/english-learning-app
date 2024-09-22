import 'package:dartx/dartx.dart';
import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@Injectable()
class ApiRandomUserDataMapper
    extends BaseDataMapper<ApiRandomUserData, RandomUser> {
  ApiRandomUserDataMapper(
    this._apiRandomUserNameDataMapper,
  );

  final ApiRandomUserNameDataMapper _apiRandomUserNameDataMapper;

  @override
  RandomUser mapToEntity(ApiRandomUserData? data) {
    return RandomUser(
      email: data?.email ?? RandomUser.defaultEmail,
      name: _apiRandomUserNameDataMapper.mapToEntity(data?.name),
      gender: Gender.values.firstOrNullWhere(
            (element) => element.serverValue == data?.gender,
          ) ??
          RandomUser.defaultGender,
      birthday: data?.dob?.date ?? RandomUser.defaultBirthday,
      id: data?.login?.uuid ?? RandomUser.defaultId,
      nationality: data?.nat ?? RandomUser.defaultNationality,
    );
  }
}
