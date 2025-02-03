import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../ai_chat_bot_details/widgets/chat_bot_input.dart';
import '../../ai_chat_bot_details/widgets/chat_widget.dart';

@RoutePage()
class PrivateChatPage extends StatefulWidget {
  const PrivateChatPage({
    super.key,
    required this.chatSession,
    required this.receiver,
  });

  final ChatSession chatSession;
  final User receiver;

  @override
  State<PrivateChatPage> createState() => _PrivateChatPageState();
}

class _PrivateChatPageState
    extends BasePageState<PrivateChatPage, PrivateChatViewModel> {
  late final TextEditingController _messageController = TextEditingController()
    ..disposeBy(disposeBag);
  late final CommonPagingController<ChatMessage> _pagingController =
      CommonPagingController<ChatMessage>()..disposeBy(disposeBag);

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: widget.receiver.username,
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
                  text: S.current.userInfo,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildBody(),
                  _buildReceiverInfo(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildBody() {
    return Selector<PrivateChatViewModel, PrivateChatViewModelData>(
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

  Widget _buildReceiverInfo() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      width: double.infinity,
      child: Selector<PrivateChatViewModel, PrivateChatViewModelData>(
        selector: (_, viewModel) => viewModel.viewModelData,
        shouldRebuild: (previous, next) {
          return previous.receiver != next.receiver;
        },
        builder: (_, vmData, __) {
          final receiver = vmData.receiver;
          final receiverMedia = receiver.media;
          return SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: Dimens.d8.responsive(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: receiverMedia.mediaUrl.isEmpty
                      ? Assets.images.appIcon.image(
                          width: Dimens.d64.responsive(),
                          height: Dimens.d64.responsive(),
                        )
                      : CircularAvatar(
                          imageUrl: receiverMedia.mediaItem,
                          width: Dimens.d64.responsive(),
                          height: Dimens.d64.responsive(),
                        ),
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    receiver.username,
                    style: AppTextStyles.s14w400primary().font16().medium,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: Dimens.d32.responsive(),
                ),
                Text(
                  "${S.current.learningInfo}:",
                  style: AppTextStyles.s14w400primary().font20().bold,
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Row(
                  children: [
                    Text(
                      "${S.current.nativeLanguage}:",
                      style: AppTextStyles.s14w400primary().font12().medium,
                    ),
                    const Spacer(),
                    Text(
                      receiver.userProfile.nativeLanguage.languageName,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.s14w400primary().font12().medium,
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    receiver.userProfile.nativeLanguage.icon.svg(
                      width: Dimens.d32.responsive(),
                      height: Dimens.d32.responsive(),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimens.d8.responsive(),
                ),
                Row(
                  children: [
                    Text(
                      "${S.current.learningLanguage}:",
                      style: AppTextStyles.s14w400primary().font12().medium,
                    ),
                    const Spacer(),
                    Text(
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      receiver.userProfile.learningLanguage.languageName,
                      style: AppTextStyles.s14w400primary().font12().medium,
                    ),
                    SizedBox(
                      width: Dimens.d8.responsive(),
                    ),
                    receiver.userProfile.learningLanguage.icon.svg(
                      width: Dimens.d32.responsive(),
                      height: Dimens.d32.responsive(),
                    ),
                  ],
                ),
                SizedBox(
                  height: Dimens.d8.responsive(),
                ),
              ],
            ),
          );
        },
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(
      chatSession: widget.chatSession,
      receiver: widget.receiver,
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
  String get screenName => 'PrivateChatPage${widget.chatSession.sessionId}';
}
