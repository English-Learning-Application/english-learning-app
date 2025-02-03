part of 'ai_chat_bot_details.dart';

@Injectable()
class AiChatBotDetailsViewModel
    extends BaseViewModel<AiChatBotDetailsViewModelData> {
  final StompDartService _stompDartService;
  final GetChatBotMessagesUseCase _getChatBotMessagesUseCase;
  final DeleteChatSessionUseCase _deleteChatBotSessionUseCase;
  final StreamController<ChatMessage> messageController =
      StreamController.broadcast();
  final ChatMessageDataMapper _chatMessageDataMapper;

  AiChatBotDetailsViewModel(
    this._stompDartService,
    this._getChatBotMessagesUseCase,
    this._chatMessageDataMapper,
    this._deleteChatBotSessionUseCase,
  ) : super(AiChatBotDetailsViewModelData());

  void sendMessage(String message) {
    _stompDartService.sendMessage(
      "/app/chat/ai/${viewModelData.currentChatSession.sessionId}",
      message,
    );
  }

  void deleteChatSession() async {
    await runViewModelCatching(
      action: () async {
        await navigator.showDialog(
          AppPopupInfo.confirmDialog(
            message: S.current.permissionToDeleteChatbotSession,
            onPressed: Func0(
              () async {
                await _deleteChatBotSessionUseCase.execute(
                  DeleteChatSessionInput(
                    chatSessionId: viewModelData.currentChatSession.sessionId,
                  ),
                );
                await navigator.pop();
                navigator.popUntilRootOfCurrentBottomTab();
              },
            ),
          ),
        );
      },
    );
  }

  onInit({required ChatSession chatSession}) async {
    updateData(
      viewModelData.copyWith(
        currentChatSession: chatSession,
      ),
    );
    await runViewModelCatching(
      action: () async {
        _getChatMessages(
          isInitialLoad: true,
          sessionId: chatSession.sessionId,
        );

        _stompDartService.connect(
          onConnect: (frame) {
            logD('Connected to socket');
            _stompDartService.subscribeToTopic(
              "/user/${chatSession.sessionId}/ai-chat",
              (message) {},
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
        final output = await _getChatBotMessagesUseCase.execute(
          GetChatBotMessagesInput(
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
