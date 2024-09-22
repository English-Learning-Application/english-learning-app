// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserDataImpl _$$ApiUserDataImplFromJson(Map<String, dynamic> json) =>
    _$ApiUserDataImpl(
      customerNumber: json['customer_number'] as String?,
      countryCallingCode: json['country_calling_code'] == null
          ? null
          : ApiCountryData.fromJson(
              json['country_calling_code'] as Map<String, dynamic>),
      phoneNumber: json['phone_number'] as String?,
      emailAddress: json['email_address'] as String?,
      userName: json['user_name'] as String?,
      profileImg: json['profile_img'] == null
          ? null
          : ApiMediaData.fromJson(json['profile_img'] as Map<String, dynamic>),
      zaloId: json['zalo_id'] as String?,
      facebookId: json['facebook_id'] as String?,
      googleId: json['google_id'] as String?,
      userInfo: json['user_info'] == null
          ? null
          : ApiUserInfoData.fromJson(json['user_info'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiUserDataImplToJson(_$ApiUserDataImpl instance) =>
    <String, dynamic>{
      'customer_number': instance.customerNumber,
      'country_calling_code': instance.countryCallingCode?.toJson(),
      'phone_number': instance.phoneNumber,
      'email_address': instance.emailAddress,
      'user_name': instance.userName,
      'profile_img': instance.profileImg?.toJson(),
      'zalo_id': instance.zaloId,
      'facebook_id': instance.facebookId,
      'google_id': instance.googleId,
      'user_info': instance.userInfo?.toJson(),
    };

_$ApiUserInfoDataImpl _$$ApiUserInfoDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiUserInfoDataImpl(
      firstName: json['first_name'] as String?,
      lastName: json['last_name'] as String?,
      gender: json['gender'] as String?,
      registerMethod: json['register_method'] as String?,
      nationality: json['nationality'] as String?,
      birthday: json['birthday'] as String?,
      isKol: json['is_kol'] as bool?,
    );

Map<String, dynamic> _$$ApiUserInfoDataImplToJson(
        _$ApiUserInfoDataImpl instance) =>
    <String, dynamic>{
      'first_name': instance.firstName,
      'last_name': instance.lastName,
      'gender': instance.gender,
      'register_method': instance.registerMethod,
      'nationality': instance.nationality,
      'birthday': instance.birthday,
      'is_kol': instance.isKol,
    };
