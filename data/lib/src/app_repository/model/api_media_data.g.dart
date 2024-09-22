// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_media_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ApiMediaDataImpl _$$ApiMediaDataImplFromJson(Map<String, dynamic> json) =>
    _$ApiMediaDataImpl(
      mediaNumber: json['media_number'] as String?,
      mediaType: json['media_type'] as String?,
      mediaUrl: json['media_url'] as String?,
      mediaUrlLg: json['media_url_lg'] as String?,
      mediaUrlMd: json['media_url_md'] as String?,
      mediaUrlSm: json['media_url_sm'] as String?,
    );

Map<String, dynamic> _$$ApiMediaDataImplToJson(_$ApiMediaDataImpl instance) =>
    <String, dynamic>{
      'media_number': instance.mediaNumber,
      'media_type': instance.mediaType,
      'media_url': instance.mediaUrl,
      'media_url_lg': instance.mediaUrlLg,
      'media_url_md': instance.mediaUrlMd,
      'media_url_sm': instance.mediaUrlSm,
    };
