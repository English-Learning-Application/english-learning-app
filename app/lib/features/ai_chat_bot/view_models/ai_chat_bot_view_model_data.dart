part of 'ai_chat_bot.dart';

enum AiChatBotState {
  initial,
  viewSessions,
}

@freezed
class AiChatBotViewModelData extends BaseViewModelData
    with _$AiChatBotViewModelData {
  const factory AiChatBotViewModelData({
    @Default([]) List<ChatSession> chatSessions,
    @Default(AiChatBotState.initial) AiChatBotState state,
  }) = _AiChatBotViewModelData;
}
