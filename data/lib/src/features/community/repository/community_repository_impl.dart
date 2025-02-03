import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: CommunityRepository)
class CommunityRepositoryImpl implements CommunityRepository {
  final CommunityApiService _communityApiService;
  final ApiChatTopicDataMapper _apiChatTopicDataMapper;
  final ApiChatSessionDataMapper _apiChatSessionDataMapper;
  final ChatMessageDataMapper _chatMessageDataMapper;

  const CommunityRepositoryImpl(
    this._communityApiService,
    this._apiChatTopicDataMapper,
    this._apiChatSessionDataMapper,
    this._chatMessageDataMapper,
  );

  @override
  Future<List<ChatTopic>> getAvailableChatTopics() async {
    final resp = await _communityApiService.getAvailableChatTopics();

    return _apiChatTopicDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<List<ChatSession>> getChatSessions(String chatTopicId) async {
    final resp = await _communityApiService.getChatSessions(chatTopicId);

    return _apiChatSessionDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<List<ChatSession>> getPrivateChatSessions() async {
    final resp = await _communityApiService.getPrivateChatSessions();

    return _apiChatSessionDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<ChatSession> createChatSession(
      String chatTopicId, String chatSessionName) async {
    final resp = await _communityApiService.createChatSession(
        chatTopicId, chatSessionName);

    return _apiChatSessionDataMapper.mapToEntity(resp?.data);
  }

  @override
  Future<PagedList<ChatMessage>> getChatMessages({
    required String chatSessionId,
    int offset = 0,
    int limit = 10,
  }) async {
    final resp = await _communityApiService.getChatMessages(
      chatSessionId: chatSessionId,
      offset: offset,
      limit: limit,
    );

    return PagedList<ChatMessage>(
      data: _chatMessageDataMapper.mapToListEntities(resp?.results),
    );
  }

  @override
  Future<ChatSession> joinChatSession(String chatSessionId) async {
    final resp = await _communityApiService.joinChatSession(chatSessionId);

    return _apiChatSessionDataMapper.mapToEntity(resp?.data);
  }

  @override
  Future<ChatSession> createPrivateChatSession(String receiverId) async {
    final resp =
        await _communityApiService.createPrivateChatSession(receiverId);

    return _apiChatSessionDataMapper.mapToEntity(resp?.data);
  }
}
