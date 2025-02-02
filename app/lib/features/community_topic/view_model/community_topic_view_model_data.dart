part of 'community_topic.dart';

@freezed
class CommunityTopicViewModelData extends BaseViewModelData
    with _$CommunityTopicViewModelData {
  const factory CommunityTopicViewModelData({
    @Default(ChatTopic()) ChatTopic chatTopic,
    @Default([]) List<ChatSession> chatSessions,
  }) = _CommunityTopicViewModelData;
}
