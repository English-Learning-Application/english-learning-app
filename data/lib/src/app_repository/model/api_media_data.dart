import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_media_data.freezed.dart';
part 'api_media_data.g.dart';

@freezed
class ApiMediaData with _$ApiMediaData {
  const factory ApiMediaData({
    @JsonKey(name: 'mediaId') String? mediaId,
    @JsonKey(name: 'mediaType') String? mediaType,
    @JsonKey(name: 'mediaUrl') String? mediaUrl,
  }) = _ApiMediaData;

  factory ApiMediaData.fromJson(Map<String, dynamic> json) =>
      _$ApiMediaDataFromJson(json);
}
