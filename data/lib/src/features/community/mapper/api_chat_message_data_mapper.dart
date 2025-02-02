import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ChatMessageDataMapper
    extends BaseDataMapper<ApiChatMessageData, ChatMessage>
    with DataMapperMixin {
  final ApiMessageUserDataMapper _apiMessageUserDataMapper;

  const ChatMessageDataMapper(
    this._apiMessageUserDataMapper,
  );

  @override
  ApiChatMessageData mapToData(ChatMessage entity) {
    return ApiChatMessageData(
      messageId: entity.messageId,
      message: entity.messageText,
      sender: _apiMessageUserDataMapper.mapToData(entity.sender),
      sentAt: entity.sentAt?.toIso8601String(),
    );
  }

  @override
  ChatMessage mapToEntity(ApiChatMessageData? data) {
    return ChatMessage(
      messageId: data?.messageId ?? ChatMessage.defaultMessageId,
      messageText: data?.message ?? ChatMessage.defaultMessageText,
      sentAt: DateTimeUtils.tryParse(date: data?.sentAt ?? ''),
      sender: _apiMessageUserDataMapper.mapToEntity(data?.sender),
    );
  }
}
