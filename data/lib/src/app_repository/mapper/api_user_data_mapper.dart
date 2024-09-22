import 'package:logic/logic.dart';
import 'package:injectable/injectable.dart';

import '../../../../data.dart';

@Injectable()
class ApiUserDataMapper extends BaseDataMapper<ApiUserData, User>
    with DataMapperMixin<ApiUserData, User> {
  final ApiCountryDataMapper _apiCountryDataMapper;
  final ApiMediaDataMapper _apiMediaDataMapper;
  final ApiUserInfoDataMapper _apiUserInfoDataMapper;

  ApiUserDataMapper(
    this._apiCountryDataMapper,
    this._apiMediaDataMapper,
    this._apiUserInfoDataMapper,
  );

  @override
  User mapToEntity(ApiUserData? data) {
    return User(
      customerNumber: data?.customerNumber ?? User.defaultCustomerNumber,
      username: data?.userName ?? User.defaultUsername,
      phoneNumber: data?.phoneNumber ?? User.defaultPhoneNumber,
      countryCallingCode:
          _apiCountryDataMapper.mapToEntity(data?.countryCallingCode),
      emailAddress: data?.emailAddress ?? User.defaultEmailAddress,
      facebookId: data?.facebookId ?? User.defaultFacebookId,
      googleId: data?.googleId ?? User.defaultGoogleId,
      zaloId: data?.zaloId ?? User.defaultZaloId,
      profileImg: _apiMediaDataMapper.mapToEntity(data?.profileImg),
      userInfo: _apiUserInfoDataMapper.mapToEntity(data?.userInfo),
    );
  }

  @override
  ApiUserData mapToData(User entity) {
    return ApiUserData(
      customerNumber:
          entity.customerNumber.isEmpty ? null : entity.customerNumber,
      userName: entity.username.isEmpty ? null : entity.username,
      phoneNumber: entity.phoneNumber.isEmpty ? null : entity.phoneNumber,
      countryCallingCode:
          _apiCountryDataMapper.mapToData(entity.countryCallingCode),
      emailAddress: entity.emailAddress.isEmpty ? null : entity.emailAddress,
      facebookId: entity.facebookId.isEmpty ? null : entity.facebookId,
      googleId: entity.googleId.isEmpty ? null : entity.googleId,
      zaloId: entity.zaloId.isEmpty ? null : entity.zaloId,
      profileImg: _apiMediaDataMapper.mapToData(entity.profileImg),
      userInfo: _apiUserInfoDataMapper.mapToData(entity.userInfo),
    );
  }
}
