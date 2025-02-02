part of 'ai_chat_bot_details.dart';

@freezed
class AiChatBotDetailsViewModelData extends BaseViewModelData
    with _$AiChatBotDetailsViewModelData {
  factory AiChatBotDetailsViewModelData({
    @Default(ChatSession()) ChatSession currentChatSession,
    @Default(LoadMoreOutput<ChatMessage>(data: <ChatMessage>[]))
    LoadMoreOutput<ChatMessage> chatMessages,
  }) = _AiChatBotDetailsViewModelData;
}
