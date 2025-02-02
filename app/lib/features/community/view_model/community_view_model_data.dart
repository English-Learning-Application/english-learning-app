part of 'community.dart';

enum ViewStatus {
  initial,
  view,
}

@freezed
class CommunityViewModelData extends BaseViewModelData
    with _$CommunityViewModelData {
  const factory CommunityViewModelData({
    @Default([]) List<ChatTopic> chatTopics,
    @Default(ViewStatus.initial) ViewStatus viewStatus,
    @Default([]) List<ChatSession> friendChatSessions,
  }) = _CommunityViewModelData;
}
