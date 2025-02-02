import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

part 'get_session_messages_use_case.freezed.dart';

@Injectable()
class GetSessionMessagesUseCase
    extends BaseLoadMoreUseCase<GetSessionMessagesInput, ChatMessage> {
  final CommunityRepository _communityRepository;

  GetSessionMessagesUseCase(this._communityRepository);

  @override
  Future<PagedList<ChatMessage>> buildUseCase(
      GetSessionMessagesInput input) async {
    final resp = await _communityRepository.getChatMessages(
      chatSessionId: input.sessionId,
      offset: offset,
      limit: PagingConstants.itemsPerPage,
    );

    return resp;
  }
}

@freezed
class GetSessionMessagesInput extends BaseInput with _$GetSessionMessagesInput {
  const factory GetSessionMessagesInput({
    required String sessionId,
  }) = _GetSessionMessagesInput;
}
