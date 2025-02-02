import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

@RoutePage()
class CommunityTopicPage extends StatefulWidget {
  const CommunityTopicPage({
    super.key,
    required this.chatTopic,
  });

  final ChatTopic chatTopic;

  @override
  State<CommunityTopicPage> createState() => _CommunityTopicPageState();
}

class _CommunityTopicPageState
    extends BasePageState<CommunityTopicPage, CommunityTopicViewModel> {
  late final TextEditingController _sessionNameController =
      TextEditingController()..disposeBy(disposeBag);

  Future<void> _onCreateNewSession() async {
    await navigator.showModalBottomSheet(
      AppPopupInfo.bottomSheet(
        title: S.current.createNewSession,
        child: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              StandardTextField(
                controller: _sessionNameController,
                label: S.current.messageSessionName,
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
              StandardButton(
                buttonType: ButtonType.primary,
                buttonSize: ButtonSize.small,
                text: S.current.createText,
                onPressed: () {
                  viewModel.initSession(
                    topicName: _sessionNameController.text,
                  );
                  navigator.pop();
                },
              ),
              SizedBox(
                height: Dimens.d16.responsive(),
              ),
            ],
          ),
        ),
      ),
      isDismissible: true,
      isScrollControlled: true,
      useRootNavigator: true,
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    final chatTopic = widget.chatTopic;
    final topicName = switch (chatTopic.topicLanguage) {
      LearningLanguage.english => chatTopic.topicNameEnglish,
      LearningLanguage.vietnamese => chatTopic.topicNameVietnamese,
      LearningLanguage.french => chatTopic.topicNameFrench,
    };
    return CommonScaffold(
      appBar: CommonAppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            chatTopic.topicLanguage.icon.svg(
              width: Dimens.d24.responsive(),
              height: Dimens.d24.responsive(),
            ),
            SizedBox(
              width: Dimens.d8.responsive(),
            ),
            Flexible(
              child: Text(
                topicName,
                style: AppTextStyles.s14w400primary().font12().medium,
              ),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: Dimens.d16.responsive(),
        ),
        child: _buildBody(),
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit(chatTopic: widget.chatTopic);
  }

  Widget _buildBody() {
    return Selector<CommunityTopicViewModel, CommunityTopicViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.chatSessions != next.chatSessions,
      builder: (_, vmData, __) {
        return ListView.separated(
          separatorBuilder: (_, __) => SizedBox(
            height: Dimens.d8.responsive(),
          ),
          itemCount: vmData.chatSessions.length + 1,
          itemBuilder: (_, index) {
            if (index == vmData.chatSessions.length) {
              return GestureDetector(
                onTap: () async {
                  await _onCreateNewSession();
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.current.backgroundColor,
                    borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                    border: Border(
                      top: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d1.responsive(),
                      ),
                      left: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d1.responsive(),
                      ),
                      right: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d1.responsive(),
                      ),
                      bottom: BorderSide(
                        color: AppColors.current.primaryColor,
                        width: Dimens.d4.responsive(),
                      ),
                    ),
                  ),
                  padding: EdgeInsets.all(Dimens.d16.responsive()),
                  child: Text(
                    S.current.createNewSession,
                    style: AppTextStyles.s14w400primary()
                        .font15()
                        .medium
                        .primaryAppColor,
                    textAlign: TextAlign.center,
                  ),
                ),
              );
            }
            final chatSession = vmData.chatSessions[index];
            final latestMessage = chatSession.messages.firstOrNull;
            return Selector<AppViewModel, AppViewModelData>(
              selector: (_, viewModel) => viewModel.viewModelData,
              shouldRebuild: (previous, next) =>
                  previous.currentUser.userId != next.currentUser.userId,
              builder: (_, appVmData, __) {
                final alreadyJoined = chatSession.participants.any(
                  (element) =>
                      element.externalId == appVmData.currentUser.userId,
                );
                return GestureDetector(
                  onTap: () async {
                    if (!alreadyJoined) return;
                    if (chatSession.sessionType == ChatType.groupChat) {
                      await navigator.push(
                        AppRouteInfo.groupChat(chatSession: chatSession),
                      );
                    }
                    viewModel.onInit(
                      chatTopic: widget.chatTopic,
                    );
                  },
                  child: Container(
                    padding: EdgeInsets.all(Dimens.d16.responsive()),
                    decoration: BoxDecoration(
                      color: AppColors.current.backgroundColor,
                      borderRadius:
                          BorderRadius.circular(Dimens.d8.responsive()),
                      border: Border(
                        top: BorderSide(
                          color: AppColors.current.primaryColor,
                          width: Dimens.d1.responsive(),
                        ),
                        left: BorderSide(
                          color: AppColors.current.primaryColor,
                          width: Dimens.d1.responsive(),
                        ),
                        right: BorderSide(
                          color: AppColors.current.primaryColor,
                          width: Dimens.d1.responsive(),
                        ),
                        bottom: BorderSide(
                          color: AppColors.current.primaryColor,
                          width: Dimens.d4.responsive(),
                        ),
                      ),
                    ),
                    child: Row(
                      children: [
                        Assets.icons.icCommunity.svg(
                          width: Dimens.d32.responsive(),
                          height: Dimens.d32.responsive(),
                        ),
                        SizedBox(
                          width: Dimens.d16.responsive(),
                        ),
                        Flexible(
                          flex: 2,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                chatSession.sessionName,
                                style: AppTextStyles.s14w400primary()
                                    .font15()
                                    .medium
                                    .primaryAppColor,
                                textAlign: TextAlign.justify,
                              ),
                              if (latestMessage != null)
                                Text(
                                  latestMessage.messageText,
                                  style: AppTextStyles.s14w400primary()
                                      .font12()
                                      .light
                                      .primaryAppColor,
                                  maxLines: 3,
                                  overflow: TextOverflow.ellipsis,
                                ),
                            ],
                          ),
                        ),
                        if (!alreadyJoined) ...[
                          SizedBox(
                            width: Dimens.d16.responsive(),
                          ),
                          Flexible(
                            child: StandardButton(
                              leadingIconSize: 0,
                              trailingIconSize: 0,
                              innerGap: 0,
                              text: S.current.joinText,
                              buttonType: ButtonType.primary,
                              buttonSize: ButtonSize.small,
                              onPressed: () {
                                viewModel.joinSession(
                                  sessionId: chatSession.sessionId,
                                );
                              },
                            ),
                          ),
                        ],
                      ],
                    ),
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  @override
  String get screenName => 'CommunityTopicPage${widget.chatTopic.topicId}';
}
