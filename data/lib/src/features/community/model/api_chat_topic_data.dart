import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data.dart';

part 'api_chat_topic_data.freezed.dart';
part 'api_chat_topic_data.g.dart';

@freezed
class ApiChatTopicData with _$ApiChatTopicData {
  const factory ApiChatTopicData({
    @JsonKey(name: 'topicId') String? topicId,
    @JsonKey(name: 'topicLanguage') String? topicLanguage,
    @JsonKey(name: 'topicNameEnglish') String? topicNameEnglish,
    @JsonKey(name: 'topicNameVietnamese') String? topicNameVietnamese,
    @JsonKey(name: 'topicNameFrench') String? topicNameFrench,
    @JsonKey(name: 'topicDescription') String? topicDescription,
    @JsonKey(name: 'sessions') List<ApiChatSessionData>? sessions,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiChatTopicData;

  factory ApiChatTopicData.fromJson(Map<String, dynamic> json) =>
      _$ApiChatTopicDataFromJson(json);
}
