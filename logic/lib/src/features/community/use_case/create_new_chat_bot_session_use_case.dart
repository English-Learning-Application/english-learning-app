import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'create_new_chat_bot_session_use_case.freezed.dart';

@Injectable()
class CreateNewChatBotSessionUseCase extends BaseFutureUseCase<
    CreateNewChatBotSessionInput, CreateNewChatBotSessionOutput> {
  final AiChatBotRepository _aiChatBotRepository;

  const CreateNewChatBotSessionUseCase(
    this._aiChatBotRepository,
  );

  @override
  Future<CreateNewChatBotSessionOutput> buildUseCase(
      CreateNewChatBotSessionInput input) async {
    final resp = await _aiChatBotRepository.createNewChatSession();

    return CreateNewChatBotSessionOutput(
      chatSession: resp,
    );
  }
}

@freezed
class CreateNewChatBotSessionInput extends BaseInput
    with _$CreateNewChatBotSessionInput {
  const CreateNewChatBotSessionInput._();

  const factory CreateNewChatBotSessionInput() = _CreateNewChatBotSessionInput;
}

@freezed
class CreateNewChatBotSessionOutput extends BaseOutput
    with _$CreateNewChatBotSessionOutput {
  const CreateNewChatBotSessionOutput._();

  const factory CreateNewChatBotSessionOutput({
    required ChatSession chatSession,
  }) = _CreateNewChatBotSessionOutput;
}
