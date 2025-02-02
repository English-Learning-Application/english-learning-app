import 'package:app/features/ai_chat_bot_details/widgets/chat_bot_input.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';
import '../widgets/chat_widget.dart';

@RoutePage()
class AiChatBotDetailsPage extends StatefulWidget {
  const AiChatBotDetailsPage({super.key, required this.chatSession});

  final ChatSession chatSession;

  @override
  State<AiChatBotDetailsPage> createState() => _AiChatBotDetailsPageState();
}

class _AiChatBotDetailsPageState
    extends BasePageState<AiChatBotDetailsPage, AiChatBotDetailsViewModel> {
  late final TextEditingController _messageController = TextEditingController()
    ..disposeBy(disposeBag);
  late final CommonPagingController<ChatMessage> _pagingController =
      CommonPagingController<ChatMessage>()..disposeBy(disposeBag);
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: widget.chatSession.sessionId,
        trailing: GestureDetector(
          child: Icon(
            Icons.delete,
            size: Dimens.d24.responsive(),
            color: AppColors.current.primaryTextColor,
          ),
          onTap: () {
            viewModel.deleteChatSession();
          },
        ),
      ),
      padding: EdgeInsets.zero,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Selector<AiChatBotDetailsViewModel, AiChatBotDetailsViewModelData>(
      shouldRebuild: (previous, next) {
        final isDifferent = previous.chatMessages != next.chatMessages;

        if (isDifferent) {
          _pagingController.appendLoadMoreOutput(next.chatMessages);
        }

        return isDifferent;
      },
      builder: (_, viewModelData, __) {
        return Column(
          children: [
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d16.responsive(),
                  vertical: Dimens.d8.responsive(),
                ),
                child: CommonPagedListView<ChatMessage>(
                  reverse: true,
                  pagingController: _pagingController,
                  itemBuilder: (_, item, index) {
                    return Selector<AppViewModel, AppViewModelData>(
                      selector: (_, viewModel) => viewModel.viewModelData,
                      builder: (_, appVmData, __) {
                        final isMe = item.sender.externalId ==
                            appVmData.currentUser.userId;
                        final senderAvatar = item.sender.imageUrl.isNotEmpty
                            ? item.sender.avatarUrl
                            : null;
                        return ChatWidget(
                          message: item.messageText,
                          isMe: isMe,
                          senderAvatar: senderAvatar,
                        );
                      },
                    );
                  },
                ),
              ),
            ),
            _buildInputField(),
          ],
        );
      },
      selector: (_, viewModel) => viewModel.viewModelData,
    );
  }

  Widget _buildInputField() {
    return ChatBotInput(
      controller: _messageController,
      onSend: (message) {
        viewModel.sendMessage(message);
      },
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      chatSession: widget.chatSession,
    );
    _pagingController.listen(
      onLoadMore: () async {
        viewModel.loadMore();
      },
    );
    viewModel.messageController.stream.listen(
      (event) {
        _pagingController.insertItemAt(
          0,
          event,
        );
      },
    );
  }

  @override
  String get screenName => 'AiChatBotDetailsPage';
}
