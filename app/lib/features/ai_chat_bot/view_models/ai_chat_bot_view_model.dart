part of 'ai_chat_bot.dart';

@Injectable()
class AiChatBotViewModel extends BaseViewModel<AiChatBotViewModelData> {
  final GetChatBotSessionsUseCase _getChatBotSessionsUseCase;
  final CreateNewChatBotSessionUseCase _createChatBotSessionUseCase;

  AiChatBotViewModel(
    this._getChatBotSessionsUseCase,
    this._createChatBotSessionUseCase,
  ) : super(const AiChatBotViewModelData());

  void onInit() async {
    await runViewModelCatching(
      action: () async {
        final output = await _getChatBotSessionsUseCase
            .execute(const GetChatBotSessionsInput());
        updateData(
          viewModelData.copyWith(
            chatSessions: output.chatSessions,
          ),
        );
      },
    );
  }

  void viewSessions() {
    updateData(
      viewModelData.copyWith(
        state: AiChatBotState.viewSessions,
      ),
    );
  }

  void selectSession(ChatSession chatSession) async {
    await runViewModelCatching(
      action: () async {
        await navigator.push(
          AppRouteInfo.aiChatBotDetails(
            chatSession: chatSession,
          ),
        );
        final sessionOutput = await _getChatBotSessionsUseCase
            .execute(const GetChatBotSessionsInput());
        updateData(
          viewModelData.copyWith(
            chatSessions: sessionOutput.chatSessions,
          ),
        );
      },
    );
  }

  void initSession() async {
    await runViewModelCatching(
      action: () async {
        final output = await _createChatBotSessionUseCase
            .execute(const CreateNewChatBotSessionInput());

        await navigator.push(
          AppRouteInfo.aiChatBotDetails(
            chatSession: output.chatSession,
          ),
        );

        final sessionOutput = await _getChatBotSessionsUseCase
            .execute(const GetChatBotSessionsInput());
        updateData(
          viewModelData.copyWith(
            chatSessions: sessionOutput.chatSessions,
          ),
        );
      },
    );
  }
}
