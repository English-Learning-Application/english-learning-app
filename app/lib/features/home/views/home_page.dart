import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../../../app.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BasePageState<HomePage, HomeViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(body: Container());
  }

  @override
  String get screenName => 'Home';
}
