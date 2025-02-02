import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../widgets/chat_bot_header.dart';

@RoutePage()
class AiChatBotPage extends StatefulWidget {
  const AiChatBotPage({super.key});

  @override
  State<AiChatBotPage> createState() => _AiChatBotPageState();
}

class _AiChatBotPageState
    extends BasePageState<AiChatBotPage, AiChatBotViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.zero,
      body: Selector<AiChatBotViewModel, AiChatBotViewModelData>(
          selector: (_, viewModel) {
        return viewModel.viewModelData;
      }, shouldRebuild: (previous, next) {
        return previous.state != next.state;
      }, builder: (_, vmData, __) {
        if (vmData.state == AiChatBotState.initial) {
          return _buildChatBotInitialPage();
        }
        return _buildBody();
      }),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const ChatBotHeader(),
        Expanded(
          child: Selector<AiChatBotViewModel, AiChatBotViewModelData>(
            selector: (_, viewModel) {
              return viewModel.viewModelData;
            },
            shouldRebuild: (previous, next) {
              return previous.chatSessions != next.chatSessions;
            },
            builder: (_, vmData, __) {
              return Padding(
                padding: EdgeInsets.all(Dimens.d16.responsive()),
                child: _buildSessionsList(
                  vmData.chatSessions,
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  Widget _buildSessionsList(
    List<ChatSession> chatSessions,
  ) {
    return ListView.separated(
      itemBuilder: (_, index) {
        if (index == chatSessions.length) {
          return GestureDetector(
            onTap: () {
              viewModel.initSession();
            },
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.current.backgroundColor,
                borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
                border: Border.all(
                  color: AppColors.current.primaryColor,
                  width: Dimens.d1.responsive(),
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
        final chatSession = chatSessions[index];
        final latestMessage = chatSession.messages.lastOrNull;
        return GestureDetector(
          onTap: () {
            viewModel.selectSession(chatSession);
          },
          child: Container(
            padding: EdgeInsets.all(Dimens.d16.responsive()),
            decoration: BoxDecoration(
              color: AppColors.current.backgroundColor,
              borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
              border: Border.all(
                color: AppColors.current.primaryColor,
                width: Dimens.d1.responsive(),
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
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        chatSession.sessionId,
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
              ],
            ),
          ),
        );
      },
      separatorBuilder: (_, __) => SizedBox(
        height: Dimens.d16.responsive(),
      ),
      itemCount: chatSessions.length + 1,
    );
  }

  Widget _buildChatBotInitialPage() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.images.robotAssistant.image(
            width: Dimens.d160.responsive(),
            height: Dimens.d160.responsive(),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.aiChatbot,
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
              S.current.accessToAiChatbotDesc,
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
                viewModel.viewSessions();
              },
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit();
  }

  @override
  String get screenName => 'AiChatBotPage';
}
