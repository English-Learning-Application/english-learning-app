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
      media: json['media'] == null
          ? null
          : ApiMediaData.fromJson(json['media'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ApiUserDataImplToJson(_$ApiUserDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'username': instance.username,
      'googleId': instance.googleId,
      'facebookId': instance.facebookId,
      'phoneNumber': instance.phone,
      'media': instance.media?.toJson(),
    };
