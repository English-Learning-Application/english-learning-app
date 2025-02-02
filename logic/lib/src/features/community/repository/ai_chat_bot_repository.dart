import '../../../../logic.dart';

abstract class AiChatBotRepository {
  Future<List<ChatSession>> getChatSessions();

  Future<ChatSession> createNewChatSession();

  Future<PagedList<ChatMessage>> getChatMessages({
    required String chatSessionId,
    int offset = 0,
    int limit = 10,
  });

  Future<void> deleteChatSession(String chatSessionId);
}
