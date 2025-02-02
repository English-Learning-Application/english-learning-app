import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'delete_chat_session_use_case.freezed.dart';

@Injectable()
class DeleteChatSessionUseCase
    extends BaseFutureUseCase<DeleteChatSessionInput, DeleteChatSessionOutput> {
  final AiChatBotRepository _aiChatBotRepository;

  const DeleteChatSessionUseCase(this._aiChatBotRepository);

  @override
  Future<DeleteChatSessionOutput> buildUseCase(
      DeleteChatSessionInput input) async {
    await _aiChatBotRepository.deleteChatSession(input.chatSessionId);
    return const DeleteChatSessionOutput();
  }
}

@freezed
class DeleteChatSessionInput extends BaseInput with _$DeleteChatSessionInput {
  const factory DeleteChatSessionInput({
    required String chatSessionId,
  }) = _DeleteChatSessionInput;
}

@freezed
class DeleteChatSessionOutput extends BaseOutput
    with _$DeleteChatSessionOutput {
  const factory DeleteChatSessionOutput() = _DeleteChatSessionOutput;
}
