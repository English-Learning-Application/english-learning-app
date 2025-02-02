import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_chat_bot_sessions_use_case.freezed.dart';

@Injectable()
class GetChatBotSessionsUseCase extends BaseFutureUseCase<GetChatBotSessionsInput, GetChatBotSessionsOutput>{
  final AiChatBotRepository _aiChatBotRepository;

  const GetChatBotSessionsUseCase(this._aiChatBotRepository);

  @override
  Future<GetChatBotSessionsOutput> buildUseCase(GetChatBotSessionsInput input) async {
    final chatSessions = await _aiChatBotRepository.getChatSessions();
    return GetChatBotSessionsOutput(chatSessions: chatSessions);
  }
}

@freezed
class GetChatBotSessionsInput extends BaseInput with _$GetChatBotSessionsInput {
  const factory GetChatBotSessionsInput() = _GetChatBotSessionsInput;
}

@freezed
class GetChatBotSessionsOutput extends BaseOutput with _$GetChatBotSessionsOutput {
  const factory GetChatBotSessionsOutput({
    required List<ChatSession> chatSessions,
  }) = _GetChatBotSessionsOutput;
}