import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:services/services.dart';

import '../../../../logic.dart';

part 'get_chat_bot_messages_use_case.freezed.dart';

@Injectable()
class GetChatBotMessagesUseCase
    extends BaseLoadMoreUseCase<GetChatBotMessagesInput, ChatMessage> {
  final AiChatBotRepository _aiChatBotRepository;

  GetChatBotMessagesUseCase(this._aiChatBotRepository);

  @override
  Future<PagedList<ChatMessage>> buildUseCase(
    GetChatBotMessagesInput input,
  ) async {
    final resp = await _aiChatBotRepository.getChatMessages(
      chatSessionId: input.sessionId,
      offset: offset,
      limit: PagingConstants.itemsPerPage,
    );

    return resp;
  }
}

@freezed
class GetChatBotMessagesInput extends BaseInput with _$GetChatBotMessagesInput {
  const factory GetChatBotMessagesInput({
    required String sessionId,
  }) = _GetChatBotMessagesInput;
}
