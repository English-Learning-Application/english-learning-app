part of 'private_chat.dart';

@Injectable()
class PrivateChatViewModel extends BaseViewModel<PrivateChatViewModelData> {
  final GetSessionMessagesUseCase _getSessionMessagesUseCase;
  final StompDartService _stompDartService;
  final StreamController<ChatMessage> messageController =
      StreamController.broadcast();
  final ChatMessageDataMapper _chatMessageDataMapper;

  PrivateChatViewModel(
    this._getSessionMessagesUseCase,
    this._stompDartService,
    this._chatMessageDataMapper,
  ) : super(PrivateChatViewModelData());

  void sendMessage(String message) {
    _stompDartService.sendMessage(
      "/app/chat/private/${viewModelData.currentChatSession.sessionId}",
      message,
    );
  }

  onInit({
    required ChatSession chatSession,
    required User receiver,
  }) async {
    updateData(
      viewModelData.copyWith(
        currentChatSession: chatSession,
        receiver: receiver,
      ),
    );
    await runViewModelCatching(
      action: () async {
        await _getChatMessages(
          isInitialLoad: true,
          sessionId: chatSession.sessionId,
        );
        _stompDartService.connect(
          onConnect: (frame) {
            logD('Connected to socket');
            _stompDartService.subscribeToTopic(
              "/user/${chatSession.sessionId}/private",
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

  @override
  void dispose() {
    _stompDartService.disconnect();
    if (!messageController.isClosed) {
      messageController.close();
    }
    super.dispose();
  }
}
