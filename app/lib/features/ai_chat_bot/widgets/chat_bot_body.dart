import 'package:app/features/ai_chat_bot/widgets/chat_widget.dart';
import 'package:flutter/material.dart';
import 'package:logic/logic.dart';

import '../../../app.dart';

class ChatBotBody extends StatelessWidget {
  const ChatBotBody({
    super.key,
    required this.messages,
  });
  final List<ChatMessage> messages;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Dimens.d8.responsive(),
            vertical: Dimens.d16.responsive(),
          ),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: ChatWidget(message: 'Hello', isMe: true),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ChatWidget(message: 'Hi', isMe: false),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: ChatWidget(
                    message: 'What are the basic to learn English?',
                    isMe: true),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: ChatWidget(
                    message:
                        'The basic to learn English is to learn the alphabet, grammar, and vocabulary first.',
                    isMe: false),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
