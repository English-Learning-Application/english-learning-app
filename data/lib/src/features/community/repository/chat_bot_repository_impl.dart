import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';

@LazySingleton(as: AiChatBotRepository)
class AiChatBotRepositoryImpl implements AiChatBotRepository {
  final ChatBotApiService _chatBotApiService;
  final ApiChatSessionDataMapper _apiChatSessionDataMapper;
  final ChatMessageDataMapper _chatMessageDataMapper;
  final ApiMessageUserDataMapper _apiMessageUserDataMapper;

  const AiChatBotRepositoryImpl(
    this._chatBotApiService,
    this._apiChatSessionDataMapper,
    this._chatMessageDataMapper,
    this._apiMessageUserDataMapper,
  );

  @override
  Future<List<ChatSession>> getChatSessions() async {
    final resp = await _chatBotApiService.getChatSessions();

    return _apiChatSessionDataMapper.mapToListEntities(resp?.results);
  }

  @override
  Future<ChatSession> createNewChatSession() async {
    final resp = await _chatBotApiService.createChatSession();

    return _apiChatSessionDataMapper.mapToEntity(resp?.data);
  }

  @override
  Future<PagedList<ChatMessage>> getChatMessages({
    required String chatSessionId,
    int offset = 0,
    int limit = 10,
  }) async {
    final resp = await _chatBotApiService.getChatMessages(
      chatSessionId: chatSessionId,
      offset: offset,
      limit: limit,
    );

    return PagedList<ChatMessage>(
      data: _chatMessageDataMapper.mapToListEntities(resp?.results),
    );
  }

  @override
  Future<void> deleteChatSession(String chatSessionId) async {
    await _chatBotApiService.deleteChatSession(chatSessionId);
  }
}
