part of 'group_chat.dart';

@Injectable()
class GroupChatViewModel extends BaseViewModel<GroupChatViewModelData> {
  final GetSessionMessagesUseCase _getSessionMessagesUseCase;
  final GetUsersDataUseCase _getUsersDataUseCase;
  final StompDartService _stompDartService;
  final StreamController<ChatMessage> messageController =
      StreamController.broadcast();
  final ChatMessageDataMapper _chatMessageDataMapper;
  final InitiatePrivateChatSessionUseCase _initiatePrivateChatSessionUseCase;

  GroupChatViewModel(
    this._getSessionMessagesUseCase,
    this._stompDartService,
    this._chatMessageDataMapper,
    this._getUsersDataUseCase,
    this._initiatePrivateChatSessionUseCase,
  ) : super(GroupChatViewModelData());

  void sendMessage(String message) {
    _stompDartService.sendMessage(
      "/app/chat/group/${viewModelData.currentChatSession.sessionId}",
      message,
    );
  }

  onInit({
    required ChatSession chatSession,
  }) async {
    updateData(
      viewModelData.copyWith(
        currentChatSession: chatSession,
      ),
    );
    await runViewModelCatching(
      action: () async {
        await Future.wait(
          [
            _getChatMessages(
              isInitialLoad: true,
              sessionId: chatSession.sessionId,
            ),
            _getUsersDataUseCase
                .execute(
              GetUsersDataInput(
                ids: chatSession.participants.map((e) => e.externalId).toList(),
              ),
            )
                .then(
              (value) {
                updateData(
                  viewModelData.copyWith(
                    users: value.users,
                  ),
                );
              },
            ),
          ],
        );
        _stompDartService.connect(
          onConnect: (frame) {
            logD('Connected to socket');
            _stompDartService.subscribeToTopic(
              "/group/${chatSession.sessionId}",
              (message) {
                logD('Received message: $message');
              },
            );
          },
          onDisconnect: (frame) {
            logD('Disconnected: ${frame.body}');
          },
          onError: (error) {
            logE('Error: $error');
          },
        );

        _stompDartService.messageController.stream.listen(
          (event) {
            _onMessageReceived(event);
          },
        );
      },
    );
  }

  Future<void> loadMore() async {
    await _getChatMessages(
      isInitialLoad: false,
      sessionId: viewModelData.currentChatSession.sessionId,
    );
  }

  Future<void> _getChatMessages({
    required bool isInitialLoad,
    required String sessionId,
  }) async {
    return runViewModelCatching(
      action: () async {
        final output = await _getSessionMessagesUseCase.execute(
          GetSessionMessagesInput(
            sessionId: sessionId,
          ),
          isInitialLoad,
        );

        updateData(
          viewModelData.copyWith(
            chatMessages: output,
          ),
        );
      },
      handleLoading: false,
      maxRetries: 3,
    );
  }

  void _onMessageReceived(String message) {
    final chatMessage = _chatMessageDataMapper.mapToEntity(
      ApiChatMessageData.fromJson(jsonDecode(message)),
    );

    messageController.add(chatMessage);
  }

  void openChatWithUser(User receiver) {
    runViewModelCatching(
      action: () async {
        final chatSessionOutput =
            await _initiatePrivateChatSessionUseCase.execute(
          InitiatePrivateChatSessionInput(
            receiverId: receiver.userId,
          ),
        );

        await navigator.replace(
          AppRouteInfo.privateChat(
            chatSession: chatSessionOutput.chatSession,
            receiver: receiver,
          ),
        );
      },
    );
  }

  @override
  void dispose() {
    _stompDartService.disconnect();
    if (!messageController.isClosed) {
      messageController.close();
    }
    super.dispose();
  }
}
