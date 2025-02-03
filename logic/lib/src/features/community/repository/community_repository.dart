import '../../../../logic.dart';

abstract class CommunityRepository {
  Future<List<ChatTopic>> getAvailableChatTopics();

  Future<List<ChatSession>> getChatSessions(String chatTopicId);

  Future<List<ChatSession>> getPrivateChatSessions();

  Future<ChatSession> createChatSession(
    String chatTopicId,
    String chatSessionName,
  );

  Future<PagedList<ChatMessage>> getChatMessages({
    required String chatSessionId,
    int offset = 0,
    int limit = 10,
  });

  Future<ChatSession> joinChatSession(String chatSessionId);

  Future<ChatSession> createPrivateChatSession(String receiverId);
}
