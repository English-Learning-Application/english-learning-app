import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';

import '../../../app.dart';
import '../../../di/di.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeViewModel> {
  @override
  void initViewModels() {}

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Container(),
    );
  }

  @override
  String get screenName => 'Home';
}
