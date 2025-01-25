import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.message,
    required this.isMe,
    this.senderAvatar,
    this.isMeColor,
    this.isNotMeColor,
    this.isNotMeTextColor,
    this.isMeTextColor,
  });

  final String message;
  final bool isMe;
  final String? senderAvatar;
  final Color? isMeColor;
  final Color? isNotMeColor;
  final Color? isNotMeTextColor;
  final Color? isMeTextColor;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        isMe
            ? const SizedBox.shrink()
            : senderAvatar == null
                ? Assets.images.robotAssistant.image(
                    width: Dimens.d32.responsive(),
                    height: Dimens.d32.responsive(),
                  )
                : CircularAvatar(
                    width: Dimens.d32.responsive(),
                    height: Dimens.d32.responsive(),
                    imageUrl: senderAvatar,
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
            color: isMe
                ? isMeColor ?? AppColors.current.primaryColor
                : isNotMeColor ??
                    FoundationColors.neutral200.withValues(alpha: 0.5),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(Dimens.d16.responsive()),
              topRight: Radius.circular(Dimens.d16.responsive()),
              bottomLeft:
                  isMe ? Radius.circular(Dimens.d16.responsive()) : Radius.zero,
              bottomRight:
                  isMe ? Radius.zero : Radius.circular(Dimens.d16.responsive()),
            ),
          ),
          child: Text(
            message,
            style: AppTextStyles.s14w400primary().font14().medium.let(
                  (it) => it.copyWith(
                    color: isMe
                        ? isMeTextColor ?? AppColors.current.secondaryTextColor
                        : isNotMeTextColor ??
                            AppColors.current.primaryTextColor,
                  ),
                ),
          ),
        ),
        isMe
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
    );
  }
}
