import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

class ChatBotHeader extends StatelessWidget {
  const ChatBotHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d8.responsive(),
      ),
      decoration: BoxDecoration(
        color: AppColors.current.primaryColor,
      ),
      child: Row(
        children: [
          Assets.images.robotAssistant.image(
            width: Dimens.d32.responsive(),
            height: Dimens.d32.responsive(),
          ),
          SizedBox(
            width: Dimens.d16.responsive(),
          ),
          Flexible(
            child: Text(
              S.current.chatbotIntro,
              style: AppTextStyles.s14w400primary().font14().medium.secondary,
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
