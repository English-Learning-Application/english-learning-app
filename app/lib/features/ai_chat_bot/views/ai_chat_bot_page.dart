import 'package:app/app.dart';
import 'package:app/features/ai_chat_bot/widgets/chat_bot_body.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/chat_bot_header.dart';
import '../widgets/chat_bot_input.dart';

@RoutePage()
class AiChatBotPage extends StatefulWidget {
  const AiChatBotPage({super.key});

  @override
  State<AiChatBotPage> createState() => _AiChatBotPageState();
}

class _AiChatBotPageState
    extends BasePageState<AiChatBotPage, AiChatBotViewModel> {
  final TextEditingController _textController = TextEditingController();

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      padding: EdgeInsets.zero,
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      children: [
        const ChatBotHeader(),
        const Expanded(
          child: ChatBotBody(
            messages: [],
          ),
        ),
        ChatBotInput(
          controller: _textController,
        ),
      ],
    );
  }

  @override
  void initViewModels() {}

  @override
  void dispose() {
    _textController.dispose();
    super.dispose();
  }

  @override
  String get screenName => 'AiChatBotPage';
}
