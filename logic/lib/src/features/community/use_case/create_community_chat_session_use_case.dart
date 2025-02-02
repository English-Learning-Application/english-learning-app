import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'create_community_chat_session_use_case.freezed.dart';

@Injectable()
class CreateCommunityChatSessionUseCase extends BaseFutureUseCase<
    CreateCommunityChatSessionInput, CreateCommunityChatSessionOutput> {
  final CommunityRepository _communityRepository;

  const CreateCommunityChatSessionUseCase(this._communityRepository);

  @override
  Future<CreateCommunityChatSessionOutput> buildUseCase(
      CreateCommunityChatSessionInput input) async {
    final resp = await _communityRepository.createChatSession(
      input.chatTopicId,
      input.chatSessionName,
    );

    return CreateCommunityChatSessionOutput(chatSession: resp);
  }
}

@freezed
class CreateCommunityChatSessionInput extends BaseInput
    with _$CreateCommunityChatSessionInput {
  const factory CreateCommunityChatSessionInput({
    required String chatTopicId,
    required String chatSessionName,
  }) = _CreateCommunityChatSessionInput;
}

@freezed
class CreateCommunityChatSessionOutput extends BaseOutput
    with _$CreateCommunityChatSessionOutput {
  const factory CreateCommunityChatSessionOutput({
    required ChatSession chatSession,
  }) = _CreateCommunityChatSessionOutput;
}
