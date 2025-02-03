import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';
import '../../ai_chat_bot_details/widgets/chat_bot_input.dart';
import '../../ai_chat_bot_details/widgets/chat_widget.dart';

@RoutePage()
class GroupChatPage extends StatefulWidget {
  const GroupChatPage({super.key, required this.chatSession});

  final ChatSession chatSession;

  @override
  State<GroupChatPage> createState() => _GroupChatPageState();
}

class _GroupChatPageState
    extends BasePageState<GroupChatPage, GroupChatViewModel> {
  late final TextEditingController _messageController = TextEditingController()
    ..disposeBy(disposeBag);
  late final CommonPagingController<ChatMessage> _pagingController =
      CommonPagingController<ChatMessage>()..disposeBy(disposeBag);

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: widget.chatSession.sessionName,
      ),
      padding: EdgeInsets.zero,
      body: DefaultTabController(
        initialIndex: 0,
        length: 2,
        child: Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: S.current.chat,
                ),
                Tab(
                  text: S.current.participants,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildBody(),
                  _buildParticipantList(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Selector<GroupChatViewModel, GroupChatViewModelData>(
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
                  separatorBuilder: (_, __) => SizedBox(
                    height: Dimens.d16.responsive(),
                  ),
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
                          chatMessageType: item.chatMessageType,
                          senderName: item.sender.username,
                          timestamp: item.sentAt,
                          chatWithBot: false,
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

  Widget _buildParticipantList() {
    return Selector<GroupChatViewModel, GroupChatViewModelData>(
      shouldRebuild: (previous, next) {
        return previous.users != next.users;
      },
      builder: (_, viewModelData, __) {
        return ListView.builder(
          itemCount: viewModelData.users.length,
          itemBuilder: (_, index) {
            final participant = viewModelData.users[index];
            final media = participant.media;
            return Selector<AppViewModel, AppViewModelData>(
              selector: (_, viewModel) => viewModel.viewModelData,
              shouldRebuild: (previous, next) {
                return previous.currentUser.userId != next.currentUser.userId;
              },
              builder: (_, appVmData, __) {
                final isMe = participant.userId == appVmData.currentUser.userId;
                return ListTile(
                  title: Text(
                    participant.username,
                    maxLines: 2,
                  ),
                  leading: media.mediaUrl.isNotEmpty
                      ? CircularAvatar(
                          width: Dimens.d32.responsive(),
                          height: Dimens.d32.responsive(),
                          imageUrl: media.mediaItem,
                        )
                      : Assets.images.appIcon.image(
                          width: Dimens.d32.responsive(),
                          height: Dimens.d32.responsive(),
                        ),
                  trailing: isMe
                      ? Text(
                          S.current.isYouText,
                          style: AppTextStyles.s14w400primary().font12().medium,
                        )
                      : GestureDetector(
                          onTap: () {
                            viewModel.openChatWithUser(participant);
                          },
                          child: Assets.icons.icMessageQuestion.svg(
                            width: Dimens.d24.responsive(),
                            height: Dimens.d24.responsive(),
                          ),
                        ),
                );
              },
            );
          },
        );
      },
      selector: (_, viewModel) => viewModel.viewModelData,
    );
  }

  @override
  String get screenName => 'GroupChatPage${widget.chatSession.sessionId}';
}
