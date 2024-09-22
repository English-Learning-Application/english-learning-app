import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../data.dart';

part 'api_user_data.freezed.dart';
part 'api_user_data.g.dart';

@freezed
class ApiUserData with _$ApiUserData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserData({
    @JsonKey(name: 'customer_number') String? customerNumber,
    @JsonKey(name: 'country_calling_code') ApiCountryData? countryCallingCode,
    @JsonKey(name: 'phone_number') String? phoneNumber,
    @JsonKey(name: 'email_address') String? emailAddress,
    @JsonKey(name: 'user_name') String? userName,
    @JsonKey(name: 'profile_img') ApiMediaData? profileImg,
    @JsonKey(name: 'zalo_id') String? zaloId,
    @JsonKey(name: 'facebook_id') String? facebookId,
    @JsonKey(name: 'google_id') String? googleId,
    @JsonKey(name: 'user_info') ApiUserInfoData? userInfo,
  }) = _ApiUserData;

  factory ApiUserData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserDataFromJson(json);
}

@freezed
class ApiUserInfoData with _$ApiUserInfoData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserInfoData({
    @JsonKey(name: 'first_name') String? firstName,
    @JsonKey(name: 'last_name') String? lastName,
    @JsonKey(name: 'gender') String? gender,
    @JsonKey(name: 'register_method') String? registerMethod,
    @JsonKey(name: 'nationality') String? nationality,
    @JsonKey(name: 'birthday') String? birthday,
    @JsonKey(name: 'is_kol') bool? isKol,
  }) = _ApiUserInfoData;

  factory ApiUserInfoData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserInfoDataFromJson(json);
}
