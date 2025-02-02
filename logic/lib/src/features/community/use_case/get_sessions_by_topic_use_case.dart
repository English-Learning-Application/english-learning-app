import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_sessions_by_topic_use_case.freezed.dart';

@Injectable()
class GetSessionsByTopicUseCase extends BaseFutureUseCase<
    GetSessionsByTopicInput, GetSessionsByTopicOutput> {
  final CommunityRepository _communityRepository;

  const GetSessionsByTopicUseCase(this._communityRepository);

  @override
  Future<GetSessionsByTopicOutput> buildUseCase(
      GetSessionsByTopicInput input) async {
    final resp = await _communityRepository.getChatSessions(input.chatTopicId);

    return GetSessionsByTopicOutput(chatSessions: resp);
  }
}

@freezed
class GetSessionsByTopicInput extends BaseInput with _$GetSessionsByTopicInput {
  const factory GetSessionsByTopicInput({
    required String chatTopicId,
  }) = _GetSessionsByTopicInput;
}

@freezed
class GetSessionsByTopicOutput extends BaseOutput
    with _$GetSessionsByTopicOutput {
  const factory GetSessionsByTopicOutput({
    required List<ChatSession> chatSessions,
  }) = _GetSessionsByTopicOutput;
}
