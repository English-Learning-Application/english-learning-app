import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class ChatWidget extends StatefulWidget {
  const ChatWidget({
    super.key,
    required this.message,
    required this.isMe,
    this.senderAvatar,
    this.isMeColor,
    this.isNotMeColor,
    this.isNotMeTextColor,
    this.isMeTextColor,
    this.chatMessageType = ChatMessageType.text,
    this.senderName,
    this.chatWithBot = true,
    this.timestamp,
  });

  final String message;
  final bool isMe;
  final String? senderAvatar;
  final Color? isMeColor;
  final Color? isNotMeColor;
  final Color? isNotMeTextColor;
  final Color? isMeTextColor;
  final ChatMessageType chatMessageType;
  final String? senderName;
  final bool chatWithBot;
  final DateTime? timestamp;

  @override
  State<ChatWidget> createState() => _ChatWidgetState();
}

class _ChatWidgetState extends State<ChatWidget> {
  bool _showTimestamp = false;

  void _toggleTimestamp() {
    setState(
      () {
        _showTimestamp = !_showTimestamp;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.chatMessageType == ChatMessageType.text) {
      return GestureDetector(
        onTap: _toggleTimestamp,
        child: _buildTextMessage(context),
      );
    } else if (widget.chatMessageType == ChatMessageType.join) {
      return _buildJoinMessage();
    }
    return const SizedBox.shrink();
  }

  Widget _buildJoinMessage() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Text(
            S.current.hasJoinedTheChat(widget.senderName ?? ''),
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font14().medium,
          ),
        ),
      ],
    );
  }

  Widget _buildTextMessage(BuildContext context) {
    return Column(
      crossAxisAlignment:
          widget.isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        Align(
          alignment: widget.isMe ? Alignment.centerRight : Alignment.centerLeft,
          child: Text(
            widget.senderName ?? '',
            style: AppTextStyles.s14w400primary().font12().medium.let(
              (it) {
                return it.copyWith(
                  color: widget.isMe
                      ? widget.isMeTextColor ??
                          AppColors.current.primaryTextColor
                              .withValues(alpha: 0.8)
                      : widget.isNotMeTextColor ??
                          AppColors.current.primaryTextColor,
                );
              },
            ),
          ),
        ),
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment:
              widget.isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            widget.isMe
                ? const SizedBox.shrink()
                : widget.senderAvatar == null
                    ? widget.chatWithBot
                        ? Assets.images.robotAssistant.image(
                            width: Dimens.d32.responsive(),
                            height: Dimens.d32.responsive(),
                          )
                        : Assets.images.appIcon.image(
                            width: Dimens.d32.responsive(),
                            height: Dimens.d32.responsive(),
                          )
                    : CircularAvatar(
                        width: Dimens.d32.responsive(),
                        height: Dimens.d32.responsive(),
                        imageUrl: widget.senderAvatar,
                      ),
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: Dimens.d8.responsive(),
                vertical: Dimens.d4.responsive(),
              ),
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.d16.responsive(),
                vertical: Dimens.d8.responsive(),
              ),
              constraints: BoxConstraints(
                maxWidth: AppDimens.of(context).screenWidth * 0.45,
              ),
              decoration: BoxDecoration(
                color: widget.isMe
                    ? widget.isMeColor ?? AppColors.current.primaryColor
                    : widget.isNotMeColor ??
                        FoundationColors.neutral200.withValues(alpha: 0.5),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimens.d16.responsive()),
                  topRight: Radius.circular(Dimens.d16.responsive()),
                  bottomLeft: widget.isMe
                      ? Radius.circular(Dimens.d16.responsive())
                      : Radius.zero,
                  bottomRight: widget.isMe
                      ? Radius.zero
                      : Radius.circular(Dimens.d16.responsive()),
                ),
              ),
              child: Text(
                widget.message,
                textAlign: TextAlign.justify,
                style: AppTextStyles.s14w400primary().font14().medium.let(
                      (it) => it.copyWith(
                        color: widget.isMe
                            ? widget.isMeTextColor ??
                                AppColors.current.secondaryTextColor
                            : widget.isNotMeTextColor ??
                                AppColors.current.primaryTextColor,
                      ),
                    ),
              ),
            ),
            widget.isMe
                ? Selector<AppViewModel, AppViewModelData>(
                    selector: (_, viewModel) => viewModel.viewModelData,
                    shouldRebuild: (previous, next) =>
                        previous.currentUser.media != next.currentUser.media,
                    builder: (_, vmData, __) {
                      final imageUrl = vmData.currentUser.media.mediaUrl;
                      final fullImagePath = vmData.currentUser.media.mediaItem;
                      final isAvatarAvailable = imageUrl.isNotEmpty;
                      return CircularAvatar(
                        width: Dimens.d32.responsive(),
                        height: Dimens.d32.responsive(),
                        image: isAvatarAvailable
                            ? null
                            : Assets.images.appIcon.image(),
                        imageUrl: isAvatarAvailable ? fullImagePath : null,
                      );
                    },
                  )
                : const SizedBox.shrink(),
          ],
        ),
        if (_showTimestamp) ...[
          const SizedBox(height: Dimens.d4),
          Text(
            widget.timestamp
                    ?.toStringWithFormat(DateTimeFormatConstants.uiDateTime) ??
                '',
            style: AppTextStyles.s14w400primary().font12().medium.let(
                  (it) => it.copyWith(
                    color: widget.isMe
                        ? widget.isMeTextColor ??
                            AppColors.current.primaryTextColor
                                .withValues(alpha: 0.8)
                        : widget.isNotMeTextColor ??
                            AppColors.current.primaryTextColor,
                  ),
                ),
          ),
        ]
      ],
    );
  }
}
