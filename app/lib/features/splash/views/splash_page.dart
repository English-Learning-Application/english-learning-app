import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../app.dart';

@RoutePage()
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BasePageState<SplashPage, SplashViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(body: Container());
  }

  @override
  String get screenName => 'Splash';
}
