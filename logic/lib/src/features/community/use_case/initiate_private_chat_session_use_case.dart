import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'initiate_private_chat_session_use_case.freezed.dart';

@Injectable()
class InitiatePrivateChatSessionUseCase extends BaseFutureUseCase<
    InitiatePrivateChatSessionInput, InitiatePrivateChatSessionOutput> {
  final CommunityRepository _communityRepository;

  const InitiatePrivateChatSessionUseCase(this._communityRepository);

  @override
  Future<InitiatePrivateChatSessionOutput> buildUseCase(
    InitiatePrivateChatSessionInput input,
  ) async {
    final resp = await _communityRepository.createPrivateChatSession(
      input.receiverId,
    );

    return InitiatePrivateChatSessionOutput(chatSession: resp);
  }
}

@freezed
class InitiatePrivateChatSessionInput extends BaseInput
    with _$InitiatePrivateChatSessionInput {
  const factory InitiatePrivateChatSessionInput({
    required String receiverId,
  }) = _InitiatePrivateChatSessionInput;
}

@freezed
class InitiatePrivateChatSessionOutput extends BaseOutput
    with _$InitiatePrivateChatSessionOutput {
  const factory InitiatePrivateChatSessionOutput({
    required ChatSession chatSession,
  }) = _InitiatePrivateChatSessionOutput;
}
