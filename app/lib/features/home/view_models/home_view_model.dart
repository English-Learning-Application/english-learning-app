part of 'home.dart';

@Injectable()
class HomeViewModel extends BaseViewModel<HomeViewModelData> {
  final GetCommunityTopicsUseCase _getCommunityTopicsUseCase;
  final GetUserSessionsByTopicUseCase _getUsersSessionsByTopicUseCase;
  final GetAllLearningProgressUseCase _getAllLearningProgressUseCase;
  HomeViewModel(
    this._getCommunityTopicsUseCase,
    this._getUsersSessionsByTopicUseCase,
    this._getAllLearningProgressUseCase,
  ) : super(const HomeViewModelData());

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        await Future.wait([
          _initCommunityTopic(),
          _initLearningProgress(),
        ]);
      },
    );
  }

  Future<void> _initCommunityTopic() async {
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
  }

  Future<void> _initLearningProgress() async {
    final learningProgressOutput = await _getAllLearningProgressUseCase.execute(
      const GetAllLearningProgressInput(),
    );

    updateData(
      viewModelData.copyWith(
        languageCourses: learningProgressOutput.languageCourses,
        categoryCourses: learningProgressOutput.categoryCourses,
      ),
    );
  }
}
