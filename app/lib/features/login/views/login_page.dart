import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../app.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Assets.icons.icArrowLeft.svg(),
    );
  }

  @override
  String get screenName => 'Login';
}
