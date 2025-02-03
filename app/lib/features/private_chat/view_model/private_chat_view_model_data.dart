part of 'private_chat.dart';

@freezed
class PrivateChatViewModelData extends BaseViewModelData
    with _$PrivateChatViewModelData {
  factory PrivateChatViewModelData({
    @Default(ChatSession()) ChatSession currentChatSession,
    @Default(LoadMoreOutput<ChatMessage>(data: <ChatMessage>[]))
    LoadMoreOutput<ChatMessage> chatMessages,
    @Default(User()) User receiver,
  }) = _PrivateChatViewModelData;
}
