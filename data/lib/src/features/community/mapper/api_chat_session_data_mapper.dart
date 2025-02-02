import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiChatSessionDataMapper
    extends BaseDataMapper<ApiChatSessionData, ChatSession>
    with DataMapperMixin {
  final ApiMessageUserDataMapper _apiMessageUserDataMapper;
  final ChatMessageDataMapper _apiChatMessageDataMapper;

  const ApiChatSessionDataMapper(
    this._apiMessageUserDataMapper,
    this._apiChatMessageDataMapper,
  );

  @override
  ApiChatSessionData mapToData(ChatSession entity) {
    return ApiChatSessionData(
      sessionId: entity.sessionId,
      sessionName: entity.sessionName,
      sessionType: entity.sessionType.serverValue,
      users: _apiMessageUserDataMapper.mapToListData(entity.participants),
      messages: _apiChatMessageDataMapper.mapToListData(entity.messages),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  ChatSession mapToEntity(ApiChatSessionData? data) {
    return ChatSession(
      sessionId: data?.sessionId ?? ChatSession.defaultSessionId,
      sessionName: data?.sessionName ?? ChatSession.defaultSessionName,
      sessionType: ChatType.fromServerValue(data?.sessionType),
      participants: _apiMessageUserDataMapper.mapToListEntities(data?.users),
      messages: _apiChatMessageDataMapper.mapToListEntities(data?.messages),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
