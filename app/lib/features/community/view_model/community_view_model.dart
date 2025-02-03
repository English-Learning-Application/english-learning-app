part of 'community.dart';

@Injectable()
class CommunityViewModel extends BaseViewModel<CommunityViewModelData> {
  final GetCommunityTopicsUseCase _getCommunityTopicsUseCase;
  final GetPrivateSessionsUseCase _getPrivateSessionsUseCase;
  final InitiatePrivateChatSessionUseCase _initiatePrivateChatSessionUseCase;
  final GetUsersDataUseCase _getUsersDataUseCase;

  CommunityViewModel(
    this._getCommunityTopicsUseCase,
    this._getPrivateSessionsUseCase,
    this._initiatePrivateChatSessionUseCase,
    this._getUsersDataUseCase,
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
                print(
                    "private.chat.length: ${output.friendChatSessions.length}");
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

  void createPrivateChatSession(String receiverId) async {
    await runViewModelCatching(
      action: () async {
        late ChatSession privateChatOutput;
        late User userDataOutput;
        await Future.wait(
          [
            _initiatePrivateChatSessionUseCase
                .execute(
              InitiatePrivateChatSessionInput(
                receiverId: receiverId,
              ),
            )
                .then((output) {
              privateChatOutput = output.chatSession;
            }),
            _getUsersDataUseCase
                .execute(
              GetUsersDataInput(
                ids: [
                  receiverId,
                  appViewModel.viewModelData.currentUser.userId
                ],
              ),
            )
                .then((output) {
              userDataOutput = output.users.firstWhere(
                (element) => element.userId == receiverId,
              );
            }),
          ],
        );

        await navigator.push(
          AppRouteInfo.privateChat(
            chatSession: privateChatOutput,
            receiver: userDataOutput,
          ),
        );
      },
    );
  }
}
