import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

class ChatBotInput extends StatelessWidget {
  const ChatBotInput({
    super.key,
    required this.controller,
    required this.onSend,
  });
  final TextEditingController controller;
  final Function(String) onSend;
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
          Expanded(
            child: StandardTextField(
              color: FoundationColors.neutral50,
              controller: controller,
              hint: S.current.chatbotHint,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(
                  Dimens.d16.responsive(),
                ),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          SizedBox(
            width: Dimens.d8.responsive(),
          ),
          GestureDetector(
            child: Container(
              width: Dimens.d40.responsive(),
              height: Dimens.d40.responsive(),
              decoration: BoxDecoration(
                color: AppColors.current.backgroundColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Assets.icons.icSend.svg(
                  width: Dimens.d16.responsive(),
                  height: Dimens.d16.responsive(),
                ),
              ),
            ),
            onTap: () {
              if (controller.text.isNotEmpty) {
                // Send message to chat bot
                onSend(controller.text);
                controller.clear();
                FocusScope.of(context).unfocus();
              }
            },
          ),
        ],
      ),
    );
  }
}
