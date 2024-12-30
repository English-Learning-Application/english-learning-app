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
  void initViewModels() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) async {
        await viewModel.onSplashInitial();
      },
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Center(
        child: Assets.images.appIcon.image(
          width: Dimens.d100.responsive(),
          height: Dimens.d100.responsive(),
        ),
      ),
    );
  }

  @override
  String get screenName => 'Splash';
}
