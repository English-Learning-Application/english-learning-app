part of 'group_chat.dart';

@Injectable()
class GroupChatViewModel extends BaseViewModel<GroupChatViewModelData> {
  final GetSessionMessagesUseCase _getSessionMessagesUseCase;
  final StompDartService _stompDartService;
  late final StreamController<ChatMessage> messageController;
  final ChatMessageDataMapper _chatMessageDataMapper;

  GroupChatViewModel(
    this._getSessionMessagesUseCase,
    this._stompDartService,
    this._chatMessageDataMapper,
  ) : super(GroupChatViewModelData());

  void sendMessage(String message) {
    _stompDartService.sendMessage(
      "/app/chat/group/${viewModelData.currentChatSession.sessionId}",
      message,
    );
  }

  onInit({required ChatSession chatSession}) async {
    await runViewModelCatching(
      action: () async {
        _getChatMessages(
          isInitialLoad: true,
          sessionId: chatSession.sessionId,
        );
        updateData(
          viewModelData.copyWith(
            currentChatSession: chatSession,
          ),
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

        messageController = StreamController<ChatMessage>.broadcast();

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
