part of 'group_chat.dart';

@freezed
class GroupChatViewModelData extends BaseViewModelData with _$GroupChatViewModelData {
  factory GroupChatViewModelData({
    @Default(ChatSession()) ChatSession currentChatSession,
    @Default(LoadMoreOutput<ChatMessage>(data: <ChatMessage>[]))
    LoadMoreOutput<ChatMessage> chatMessages,
  }) = _GroupChatViewModelData;
}