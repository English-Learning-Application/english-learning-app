import 'package:dartx/dartx.dart';
import 'package:data/data.dart';
import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

@Injectable()
class ApiUserInfoDataMapper extends BaseDataMapper<ApiUserInfoData, UserInfo>
    with DataMapperMixin<ApiUserInfoData, UserInfo> {
  @override
  UserInfo mapToEntity(ApiUserInfoData? data) {
    return UserInfo(
      firstName: data?.firstName ?? UserInfo.defaultFirstName,
      lastName: data?.lastName ?? UserInfo.defaultLastName,
      birthday: DateTimeUtils.tryParse(
            date: data?.birthday,
            format: DateTimeFormatConstants.appServerRequest,
          ) ??
          UserInfo.defaultBirthday,
      gender: Gender.values.firstOrNullWhere(
              (element) => element.serverValue == data?.gender) ??
          UserInfo.defaultGender,
      nationality: Nationality.values.firstOrNullWhere(
              (element) => element.serverValue == data?.nationality) ??
          UserInfo.defaultNationality,
    );
  }

  @override
  ApiUserInfoData mapToData(UserInfo entity) {
    return ApiUserInfoData(
      firstName: entity.firstName,
      lastName: entity.lastName,
      birthday: entity.birthday?.toIso8601String(),
      gender: entity.gender.serverValue,
      nationality: entity.nationality.serverValue,
    );
  }
}
