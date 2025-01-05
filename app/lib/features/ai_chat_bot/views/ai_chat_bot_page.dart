import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

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
    return CommonScaffold(body: Container());
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'AiChatBotPage';
}
