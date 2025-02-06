import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_user_sessions_by_topic_use_case.freezed.dart';

@Injectable()
class GetUserSessionsByTopicUseCase extends BaseFutureUseCase<
    GetUserSessionsByTopicInput, GetUserSessionsByTopicOutput> {
  final CommunityRepository _communityRepository;

  GetUserSessionsByTopicUseCase(this._communityRepository);

  @override
  Future<GetUserSessionsByTopicOutput> buildUseCase(
      GetUserSessionsByTopicInput input) async {
    final resp = await _communityRepository.getUserChatSessionsByTopic(
      input.chatTopicId,
    );

    return GetUserSessionsByTopicOutput(chatSessions: resp);
  }
}

@freezed
class GetUserSessionsByTopicInput extends BaseInput
    with _$GetUserSessionsByTopicInput {
  const factory GetUserSessionsByTopicInput({
    required String chatTopicId,
  }) = _GetUserSessionsByTopicInput;
}

@freezed
class GetUserSessionsByTopicOutput extends BaseOutput
    with _$GetUserSessionsByTopicOutput {
  const factory GetUserSessionsByTopicOutput({
    required List<ChatSession> chatSessions,
  }) = _GetUserSessionsByTopicOutput;
}
