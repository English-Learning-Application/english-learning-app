import 'package:data/data.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class CommunityApiService {
  final AuthAppServerApiClient _authAppServerApiClient;

  const CommunityApiService(this._authAppServerApiClient);

  Future<ListResponse<ApiChatTopicData>?> getAvailableChatTopics() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: 'http://192.168.1.8:8089/api/v1/communities/topics',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiChatTopicData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiChatSessionData>?> getChatSessions(
    String chatTopicId,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path:
          'http://192.168.1.8:8089/api/v1/communities/topics/$chatTopicId/sessions',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<ListResponse<ApiChatSessionData>?> getPrivateChatSessions() async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.get,
      path: 'http://192.168.1.8:8089/api/v1/communities/sessions',
      successResponseMapperType: SuccessResponseMapperType.listResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiChatSessionData>?> createChatSession(
    String chatTopicId,
    String chatSessionName,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path:
          'http://192.168.1.8:8089/api/v1/communities/topics/$chatTopicId/sessions',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      body: {
        'sessionName': chatSessionName,
      },
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
          'http://192.168.1.8:8089/api/v1/communities/sessions/$chatSessionId/messages',
      queryParameters: {
        'offset': offset,
        'limit': limit,
      },
      decoder: (json) =>
          ApiChatMessageData.fromJson(json as Map<String, dynamic>),
      successResponseMapperType: SuccessResponseMapperType.listResponse,
    );
  }

  Future<DataResponse<ApiChatSessionData>?> joinChatSession(
    String chatSessionId,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path:
          'http://192.168.1.8:8089/api/v1/communities/sessions/$chatSessionId',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }

  Future<DataResponse<ApiChatSessionData>?> createPrivateChatSession(
    String receiverId,
  ) async {
    return await _authAppServerApiClient.request(
      method: RestApiMethod.post,
      path:
          'http://192.168.1.8:8089/api/v1/communities/sessions/private/$receiverId',
      successResponseMapperType: SuccessResponseMapperType.dataResponse,
      decoder: (json) =>
          ApiChatSessionData.fromJson(json as Map<String, dynamic>),
    );
  }
}
