// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_user_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiUserDataImpl _$$ApiUserDataImplFromJson(Map<String, dynamic> json) =>
    _$ApiUserDataImpl(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      username: json['username'] as String?,
      googleId: json['googleId'] as String?,
      facebookId: json['facebookId'] as String?,
      phone: json['phoneNumber'] as String?,
      isEmailVerified: json['isEmailVerified'] as bool?,
      isPhoneNumberVerified: json['isPhoneNumberVerified'] as bool?,
      media: json['media'] == null
          ? null
          : ApiMediaData.fromJson(json['media'] as Map<String, dynamic>),
      userProfile: json['userProfile'] == null
          ? null
          : ApiUserProfileData.fromJson(
              json['userProfile'] as Map<String, dynamic>),
      registrationStatus: json['registrationStatus'] as String?,
      userSubscriptions: (json['userSubscriptions'] as List<dynamic>?)
          ?.map((e) =>
              ApiUserSubscriptionData.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$ApiUserDataImplToJson(_$ApiUserDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'username': instance.username,
      'googleId': instance.googleId,
      'facebookId': instance.facebookId,
      'phoneNumber': instance.phone,
      'isEmailVerified': instance.isEmailVerified,
      'isPhoneNumberVerified': instance.isPhoneNumberVerified,
      'media': instance.media?.toJson(),
      'userProfile': instance.userProfile?.toJson(),
      'registrationStatus': instance.registrationStatus,
      'userSubscriptions':
          instance.userSubscriptions?.map((e) => e.toJson()).toList(),
    };

_$ApiUserProfileDataImpl _$$ApiUserProfileDataImplFromJson(
        Map<String, dynamic> json) =>
    _$ApiUserProfileDataImpl(
      userProfileId: json['userProfileId'] as String?,
      nativeLanguage: json['nativeLanguage'] as String?,
      learningLanguage: json['learningLanguage'] as String?,
      learningTypeOne: json['learningTypeOne'] as String?,
      learningTypeTwo: json['learningTypeTwo'] as String?,
      learningTypeThree: json['learningTypeThree'] as String?,
    );

Map<String, dynamic> _$$ApiUserProfileDataImplToJson(
        _$ApiUserProfileDataImpl instance) =>
    <String, dynamic>{
      'userProfileId': instance.userProfileId,
      'nativeLanguage': instance.nativeLanguage,
      'learningLanguage': instance.learningLanguage,
      'learningTypeOne': instance.learningTypeOne,
      'learningTypeTwo': instance.learningTypeTwo,
      'learningTypeThree': instance.learningTypeThree,
    };
