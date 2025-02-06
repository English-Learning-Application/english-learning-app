part of 'home.dart';

@Injectable()
class HomeViewModel extends BaseViewModel<HomeViewModelData> {
  final GetCommunityTopicsUseCase _getCommunityTopicsUseCase;
  final GetUserSessionsByTopicUseCase _getUsersSessionsByTopicUseCase;
  HomeViewModel(
    this._getCommunityTopicsUseCase,
    this._getUsersSessionsByTopicUseCase,
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
            final resp = await _getUsersSessionsByTopicUseCase.execute(
              GetUserSessionsByTopicInput(chatTopicId: topic.topicId),
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
