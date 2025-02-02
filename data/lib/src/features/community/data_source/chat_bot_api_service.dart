import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class ChatBotApiService {
  final AuthAppServerApiClient _authAppServerApiClient;

  const ChatBotApiService(
    this._authAppServerApiClient,
  );

  Future<ListResponse<ApiChatSessionData>?> getChatSessions() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: 'http://192.168.1.8:8089/api/v1/chatbot/sessions',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiChatSessionData>?> createChatSession() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path: 'http://192.168.1.8:8089/api/v1/chatbot/sessions',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiChatMessageData>?> getChatMessages({
    required String chatSessionId,
    int offset = 0,
    int limit = 10,
  }) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path:
          'http://192.168.1.8:8089/api/v1/chatbot/sessions/$chatSessionId/messages',
      queryParameters: {
        'offset': offset,
        'limit': limit,
      },
      decoder: (json) =>
          ApiChatMessageData.fromJson(json as Map<String, dynamic>),
      successResponseMapperType: SuccessResponseMapperType.listResponse,
    );
  }

  Future<void> deleteChatSession(String chatSessionId) async {
    await _authAppServerApiClient.request(
      method: RestApiMethod.delete,
      path: 'http://192.168.1.8:8089/api/v1/chatbot/sessions/$chatSessionId',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
    );
  }
}
