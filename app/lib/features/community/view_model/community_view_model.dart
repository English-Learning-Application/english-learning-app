part of 'community.dart';

@Injectable()
class CommunityViewModel extends BaseViewModel<CommunityViewModelData> {
  final GetCommunityTopicsUseCase _getCommunityTopicsUseCase;
  final GetPrivateSessionsUseCase _getPrivateSessionsUseCase;
  CommunityViewModel(
    this._getCommunityTopicsUseCase,
    this._getPrivateSessionsUseCase,
  ) : super(const CommunityViewModelData());

  void view() {
    updateData(
      viewModelData.copyWith(
        viewStatus: ViewStatus.view,
      ),
    );
  }

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        await Future.wait(
          [
            _getCommunityTopicsUseCase
                .execute(
              const GetCommunityTopicsInput(),
            )
                .then(
              (output) {
                updateData(
                  viewModelData.copyWith(
                    chatTopics: output.chatTopics,
                  ),
                );
              },
            ),
            _getPrivateSessionsUseCase
                .execute(
              const GetPrivateSessionsInput(),
            )
                .then(
              (output) {
                updateData(
                  viewModelData.copyWith(
                    friendChatSessions: output.friendChatSessions,
                  ),
                );
              },
            )
          ],
        );
      },
    );
  }
}
