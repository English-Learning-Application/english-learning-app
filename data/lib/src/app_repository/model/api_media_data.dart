import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_media_data.freezed.dart';
part 'api_media_data.g.dart';

@freezed
class ApiMediaData with _$ApiMediaData {
  const factory ApiMediaData({
    @JsonKey(name: 'media_number') String? mediaNumber,
    @JsonKey(name: 'media_type') String? mediaType,
    @JsonKey(name: 'media_url') String? mediaUrl,
    @JsonKey(name: 'media_url_lg') String? mediaUrlLg,
    @JsonKey(name: 'media_url_md') String? mediaUrlMd,
    @JsonKey(name: 'media_url_sm') String? mediaUrlSm,
  }) = _ApiMediaData;

  factory ApiMediaData.fromJson(Map<String, dynamic> json) =>
      _$ApiMediaDataFromJson(json);
}
