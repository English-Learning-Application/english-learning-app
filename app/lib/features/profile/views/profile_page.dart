import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage, ProfileViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(body: Container());
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'ProfilePage';
}
