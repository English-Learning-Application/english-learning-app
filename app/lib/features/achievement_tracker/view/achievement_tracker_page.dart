import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

@RoutePage()
class AchievementTrackerPage extends StatefulWidget {
  const AchievementTrackerPage({super.key});

  @override
  State<AchievementTrackerPage> createState() => _AchievementTrackerPageState();
}

class _AchievementTrackerPageState
    extends BasePageState<AchievementTrackerPage, AchievementTrackerViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.achievement,
      ),
      body: Container(),
    );
  }

  @override
  void initViewModels() {
    viewModel.init();
  }

  @override
  String get screenName => 'AchievementTracker';
}
