part of 'home.dart';

@Injectable()
class HomeViewModel extends BaseViewModel<HomeViewModelData> {
  final GetCommunityTopicsUseCase _getCommunityTopicsUseCase;
  final GetSessionsByTopicUseCase _getSessionsByTopicUseCase;
  HomeViewModel(
    this._getCommunityTopicsUseCase,
    this._getSessionsByTopicUseCase,
  ) : super(const HomeViewModelData());

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        final communityTopicOutput = await _getCommunityTopicsUseCase.execute(
          const GetCommunityTopicsInput(),
        );

        await Future.forEach(
          communityTopicOutput.chatTopics,
          (topic) async {
            final resp = await _getSessionsByTopicUseCase.execute(
              GetSessionsByTopicInput(chatTopicId: topic.topicId),
            );

            final currentChatSessions = [...viewModelData.chatSessions]
              ..removeWhere(
                (element) => resp.chatSessions.any(
                  (element2) => element2.sessionId == element.sessionId,
                ),
              );

            currentChatSessions.addAll(resp.chatSessions);

            updateData(
              viewModelData.copyWith(
                chatSessions: currentChatSessions,
              ),
            );
          },
        );
      },
    );
  }
}
