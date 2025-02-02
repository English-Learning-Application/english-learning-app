import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_private_sessions_use_case.freezed.dart';

@Injectable()
class GetPrivateSessionsUseCase extends BaseFutureUseCase<
    GetPrivateSessionsInput, GetPrivateSessionsOutput> {
  final CommunityRepository _communityRepository;

  const GetPrivateSessionsUseCase(this._communityRepository);

  @override
  Future<GetPrivateSessionsOutput> buildUseCase(GetPrivateSessionsInput input) async {
    final resp = await _communityRepository.getPrivateChatSessions();

    return GetPrivateSessionsOutput(
      friendChatSessions: resp,
    );
  }
}

@freezed
class GetPrivateSessionsInput extends BaseInput with _$GetPrivateSessionsInput {
  const factory GetPrivateSessionsInput() = _GetPrivateSessionsInput;
}

@freezed
class GetPrivateSessionsOutput extends BaseOutput
    with _$GetPrivateSessionsOutput {
  const factory GetPrivateSessionsOutput({
    @Default([]) List<ChatSession> friendChatSessions,
  }) = _GetPrivateSessionsOutput;
}
