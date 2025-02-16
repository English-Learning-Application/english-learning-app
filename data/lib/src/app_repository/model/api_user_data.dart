import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data.dart';

part 'api_user_data.freezed.dart';
part 'api_user_data.g.dart';

@freezed
class ApiUserData with _$ApiUserData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserData({
    @JsonKey(name: 'userId') String? userId,
    @JsonKey(name: 'email') String? email,
    @JsonKey(name: 'username') String? username,
    @JsonKey(name: 'googleId') String? googleId,
    @JsonKey(name: 'facebookId') String? facebookId,
    @JsonKey(name: 'phoneNumber') String? phone,
    @JsonKey(name: 'isEmailVerified') bool? isEmailVerified,
    @JsonKey(name: 'isPhoneNumberVerified') bool? isPhoneNumberVerified,
    @JsonKey(name: 'media') ApiMediaData? media,
    @JsonKey(name: 'userProfile') ApiUserProfileData? userProfile,
    @JsonKey(name: 'registrationStatus') String? registrationStatus,
    @JsonKey(name: 'userSubscriptions')
    List<ApiUserSubscriptionData>? userSubscriptions,
  }) = _ApiUserData;

  factory ApiUserData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserDataFromJson(json);
}

@freezed
class ApiUserProfileData with _$ApiUserProfileData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserProfileData({
    @JsonKey(name: 'userProfileId') String? userProfileId,
    @JsonKey(name: 'nativeLanguage') String? nativeLanguage,
    @JsonKey(name: 'learningLanguage') String? learningLanguage,
    @JsonKey(name: 'learningTypeOne') String? learningTypeOne,
    @JsonKey(name: 'learningTypeTwo') String? learningTypeTwo,
    @JsonKey(name: 'learningTypeThree') String? learningTypeThree,
  }) = _ApiUserProfileData;

  factory ApiUserProfileData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserProfileDataFromJson(json);
}
