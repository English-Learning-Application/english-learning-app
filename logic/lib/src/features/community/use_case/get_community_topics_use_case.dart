import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_community_topics_use_case.freezed.dart';

@Injectable()
class GetCommunityTopicsUseCase extends BaseFutureUseCase<
    GetCommunityTopicsInput, GetCommunityTopicsOutput> {
  final CommunityRepository _communityRepository;

  const GetCommunityTopicsUseCase(this._communityRepository);

  @override
  Future<GetCommunityTopicsOutput> buildUseCase(
      GetCommunityTopicsInput input) async {
    final resp = await _communityRepository.getAvailableChatTopics();

    return GetCommunityTopicsOutput(chatTopics: resp);
  }
}

@freezed
class GetCommunityTopicsInput extends BaseInput with _$GetCommunityTopicsInput {
  const factory GetCommunityTopicsInput() = _GetCommunityTopicsInput;
}

@freezed
class GetCommunityTopicsOutput extends BaseOutput
    with _$GetCommunityTopicsOutput {
  const factory GetCommunityTopicsOutput({
    required List<ChatTopic> chatTopics,
  }) = _GetCommunityTopicsOutput;
}
