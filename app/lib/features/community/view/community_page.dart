import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

@RoutePage()
class CommunityPage extends StatefulWidget {
  const CommunityPage({super.key});

  @override
  State<CommunityPage> createState() => _CommunityPageState();
}

class _CommunityPageState
    extends BasePageState<CommunityPage, CommunityViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.communityHub,
      ),
      body: Selector<CommunityViewModel, CommunityViewModelData>(
        selector: (_, viewModel) => viewModel.viewModelData,
        shouldRebuild: (previous, next) =>
            previous.viewStatus != next.viewStatus,
        builder: (_, viewModelData, __) {
          if (viewModelData.viewStatus == ViewStatus.initial) {
            return _buildCommunityIntro();
          }
          return _buildBody();
        },
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit();
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.communityHubIntro,
            style: AppTextStyles.s14w400primary().font20().bold,
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.community,
            style: AppTextStyles.s14w400primary().font16().medium,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          _buildCommunityList(),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Text(
            "${S.current.or} ${S.current.chatWithYourFriends.toLowerCase()}",
            style: AppTextStyles.s14w400primary().font16().medium,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          _buildPrivateChatList(),
        ],
      ),
    );
  }

  Widget _buildCommunityIntro() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.icCommunity.svg(
            width: Dimens.d160.responsive(),
            height: Dimens.d160.responsive(),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.communityHub,
            style: AppTextStyles.s14w400primary().font24().bold.primaryAppColor,
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.d16.responsive(),
            ),
            child: Text(
              S.current.communityHubIntro,
              style: AppTextStyles.s14w400primary()
                  .font15()
                  .medium
                  .primaryAppColor,
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: Dimens.d32.responsive(),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: Dimens.d16.responsive(),
            ),
            child: StandardButton(
              text: S.current.getStarted,
              buttonType: ButtonType.primary,
              buttonSize: ButtonSize.small,
              onPressed: () {
                viewModel.view();
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCommunityList() {
    return Selector<CommunityViewModel, CommunityViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) => previous.chatTopics != next.chatTopics,
      builder: (_, viewModelData, __) {
        final chatTopics = viewModelData.chatTopics;
        return ListView.separated(
          separatorBuilder: (_, __) => SizedBox(
            height: Dimens.d8.responsive(),
          ),
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: chatTopics.length,
          itemBuilder: (_, index) {
            final chatTopic = chatTopics[index];
            final chatTopicName = switch (chatTopic.topicLanguage) {
              LearningLanguage.english => chatTopic.topicNameEnglish,
              LearningLanguage.vietnamese => chatTopic.topicNameVietnamese,
              LearningLanguage.french => chatTopic.topicNameFrench,
            };
            return GestureDetector(
              onTap: () async {
                await navigator.push(
                  AppRouteInfo.communityTopic(chatTopic: chatTopic),
                );
                viewModel.onInit();
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d16.responsive(),
                  vertical: Dimens.d8.responsive(),
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                  color: chatTopic.topicLanguage.color.withValues(alpha: 0.6),
                  border: Border(
                    top: BorderSide(
                      color: chatTopic.topicLanguage.color,
                      width: Dimens.d1.responsive(),
                    ),
                    bottom: BorderSide(
                      color: chatTopic.topicLanguage.color,
                      width: Dimens.d6.responsive(),
                    ),
                    left: BorderSide(
                      color: chatTopic.topicLanguage.color,
                      width: Dimens.d1.responsive(),
                    ),
                    right: BorderSide(
                      color: chatTopic.topicLanguage.color,
                      width: Dimens.d3.responsive(),
                    ),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
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
                            chatTopicName,
                            style: AppTextStyles.s14w400primary()
                                .font16()
                                .medium
                                .white,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    Text(
                      chatTopic.topicDescription,
                      style:
                          AppTextStyles.s14w400primary().font14().medium.white,
                    ),
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    Text(
                      '${chatTopic.sessions.length} ${S.current.chattingSession.toLowerCase()}',
                      style:
                          AppTextStyles.s14w400primary().font14().medium.white,
                    ),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildPrivateChatList() {
    return Selector<CommunityViewModel, CommunityViewModelData>(
      shouldRebuild: (previous, next) =>
          previous.friendChatSessions != next.friendChatSessions,
      selector: (_, viewModel) => viewModel.viewModelData,
      builder: (_, vmData, __) {
        if (vmData.friendChatSessions.isEmpty) {
          return SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Assets.icons.icSadFace.svg(
                  width: Dimens.d64.responsive(),
                  height: Dimens.d64.responsive(),
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Text(
                  S.current.noFriendChatsFound,
                  style: AppTextStyles.s14w400primary().font18().medium,
                ),
              ],
            ),
          );
        }
        return SizedBox(
            height: Dimens.d100.responsive(),
            child: _buildFriendChatList(vmData.friendChatSessions));
      },
    );
  }

  Widget _buildFriendChatList(List<ChatSession> friendChatSessions) {
    return ListView.separated(
      itemBuilder: (_, index) {
        final chatSession = friendChatSessions[index];
        return Selector<AppViewModel, AppViewModelData>(
          builder: (_, appVmData, __) {
            final receiver = chatSession.participants.firstWhere(
              (element) => element.externalId != appVmData.currentUser.userId,
            );
            return GestureDetector(
              onTap: () {
                viewModel.createPrivateChatSession(receiver.externalId);
              },
              child: SizedBox(
                width: Dimens.d64.responsive(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if (receiver.imageUrl.isEmpty) ...[
                      Assets.images.appIcon.image(
                        width: Dimens.d64.responsive(),
                        height: Dimens.d64.responsive(),
                      ),
                    ] else ...[
                      CircularAvatar(
                        imageUrl: receiver.avatarUrl,
                        width: Dimens.d64.responsive(),
                        height: Dimens.d64.responsive(),
                      ),
                    ],
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    Text(
                      receiver.username,
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: AppTextStyles.s14w400primary().font10().medium,
                    ),
                  ],
                ),
              ),
            );
          },
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) {
            return next.currentUser.userId != prev.currentUser.userId;
          },
        );
      },
      scrollDirection: Axis.horizontal,
      separatorBuilder: (_, __) => SizedBox(
        width: Dimens.d16.responsive(),
      ),
      itemCount: friendChatSessions.length,
    );
  }

  @override
  String get screenName => 'CommunityPage';
}
