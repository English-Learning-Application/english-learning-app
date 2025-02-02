import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'join_chat_session_use_case.freezed.dart';

@Injectable()
class JoinChatSessionUseCase
    extends BaseFutureUseCase<JoinChatSessionInput, JoinChatSessionOutput> {
  final CommunityRepository _communityRepository;

  const JoinChatSessionUseCase(
    this._communityRepository,
  );

  @override
  Future<JoinChatSessionOutput> buildUseCase(JoinChatSessionInput input) async {
    final chatSession =
        await _communityRepository.joinChatSession(input.chatSessionId);
    return JoinChatSessionOutput(chatSession: chatSession);
  }
}

@freezed
class JoinChatSessionInput extends BaseInput with _$JoinChatSessionInput {
  const factory JoinChatSessionInput({
    required String chatSessionId,
  }) = _JoinChatSessionInput;
}

@freezed
class JoinChatSessionOutput extends BaseOutput with _$JoinChatSessionOutput {
  const factory JoinChatSessionOutput({
    required ChatSession chatSession,
  }) = _JoinChatSessionOutput;
}
