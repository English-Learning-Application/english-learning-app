import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@Injectable()
class ApiUserDataMapper extends BaseDataMapper<ApiUserData, User>
    with DataMapperMixin<ApiUserData, User> {
  final ApiMediaDataMapper _apiMediaDataMapper;
  final ApiUserProfileDataMapper _apiUserProfileDataMapper;
  final ApiUserSubscriptionDataMapper _apiUserSubscriptionDataMapper;

  const ApiUserDataMapper(
    this._apiMediaDataMapper,
    this._apiUserProfileDataMapper,
    this._apiUserSubscriptionDataMapper,
  );

  @override
  User mapToEntity(ApiUserData? data) {
    return User(
      userId: data?.userId ?? User.defaultUserId,
      email: data?.email ?? User.defaultEmail,
      username: data?.username ?? User.defaultUsername,
      googleId: data?.googleId ?? User.defaultGoogleId,
      facebookId: data?.facebookId ?? User.defaultFacebookId,
      phoneNumber: data?.phone ?? User.defaultPhoneNumber,
      media: _apiMediaDataMapper.mapToEntity(data?.media),
      userProfile: _apiUserProfileDataMapper.mapToEntity(data?.userProfile),
      registrationStatus: RegistrationStatus.fromServerValue(
            data?.registrationStatus,
          ) ??
          User.defaultRegistrationStatus,
      isEmailVerified: data?.isEmailVerified ?? User.defaultIsEmailVerified,
      isPhoneNumberVerified:
          data?.isPhoneNumberVerified ?? User.defaultIsPhoneNumberVerified,
      userSubscriptions: _apiUserSubscriptionDataMapper.mapToListEntities(
        data?.userSubscriptions,
      ),
    );
  }

  @override
  ApiUserData mapToData(User entity) {
    return ApiUserData(
      userId: entity.userId,
      email: entity.email,
      username: entity.username,
      googleId: entity.googleId,
      facebookId: entity.facebookId,
      isEmailVerified: entity.isEmailVerified,
      isPhoneNumberVerified: entity.isPhoneNumberVerified,
      phone: entity.phoneNumber,
      media: _apiMediaDataMapper.mapToData(entity.media),
      userProfile: _apiUserProfileDataMapper.mapToData(entity.userProfile),
      registrationStatus: entity.registrationStatus.serverValue,
      userSubscriptions: _apiUserSubscriptionDataMapper.mapToListData(
        entity.userSubscriptions,
      ),
    );
  }
}
