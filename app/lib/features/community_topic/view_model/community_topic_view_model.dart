part of 'community_topic.dart';

@Injectable()
class CommunityTopicViewModel
    extends BaseViewModel<CommunityTopicViewModelData> {
  final GetSessionsByTopicUseCase _getSessionsByTopicUseCase;
  final CreateCommunityChatSessionUseCase _createCommunityChatSessionUseCase;
  final JoinChatSessionUseCase _joinChatSessionUseCase;
  CommunityTopicViewModel(
    this._getSessionsByTopicUseCase,
    this._createCommunityChatSessionUseCase,
    this._joinChatSessionUseCase,
  ) : super(
          const CommunityTopicViewModelData(),
        );

  void joinSession({required String sessionId}) async {
    await runViewModelCatching(
      action: () async {
        final output = await _joinChatSessionUseCase.execute(
          JoinChatSessionInput(
            chatSessionId: sessionId,
          ),
        );

        final currentSessions = [...viewModelData.chatSessions];
        currentSessions[currentSessions.indexWhere(
            (element) => element.sessionId == sessionId)] = output.chatSession;

        updateData(
          viewModelData.copyWith(
            chatSessions: currentSessions,
          ),
        );
      },
    );
  }

  void initSession({
    required String topicName,
  }) async {
    await runViewModelCatching(
      action: () async {
        await _createCommunityChatSessionUseCase.execute(
          CreateCommunityChatSessionInput(
            chatTopicId: viewModelData.chatTopic.topicId,
            chatSessionName: topicName,
          ),
        );

        final allSessionsOutput = await _getSessionsByTopicUseCase.execute(
          GetSessionsByTopicInput(
            chatTopicId: viewModelData.chatTopic.topicId,
          ),
        );

        updateData(
          viewModelData.copyWith(
            chatSessions: allSessionsOutput.chatSessions,
          ),
        );
      },
    );
  }

  void onInit({
    required ChatTopic chatTopic,
  }) async {
    await runViewModelCatching(
      action: () async {
        final output = await _getSessionsByTopicUseCase.execute(
          GetSessionsByTopicInput(
            chatTopicId: chatTopic.topicId,
          ),
        );
        updateData(
          viewModelData.copyWith(
            chatTopic: chatTopic,
            chatSessions: output.chatSessions,
          ),
        );
      },
    );
  }
}
