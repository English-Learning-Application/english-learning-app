import 'package:app/app.dart';
import 'package:app/features/main/viewmodels/main_view_model.dart';
import 'package:auto_route/annotations.dart';

import 'package:flutter/material.dart';

@RoutePage()
class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends BasePageState<MainPage, MainViewModel> {

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(body: Container());
  }

  @override
  void initViewModels() {
  }

  @override
  String get screenName => 'MainPage';
}
