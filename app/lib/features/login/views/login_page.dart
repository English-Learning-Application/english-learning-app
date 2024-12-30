import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import '../../../app.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BasePageState<LoginPage, LoginViewModel> {
  @override
  void initViewModels() {}

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: Column(
        children: [
          Expanded(
            child: Assets.images.appIcon.image(
              width: Dimens.d300.responsive(),
              height: Dimens.d300.responsive(),
            ),
          ),
          SizedBox(
            height: Dimens.d20.responsive(),
          ),
          Text(
            S.current.loginTitle,
            style: AppTextStyles.s14w400primary().bold.font20(),
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Text(
            S.current.loginSubTitle,
            style: AppTextStyles.s14w400primary().font16(),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          StandardButton(
            buttonSize: ButtonSize.medium,
            text: S.current.login,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          StandardButton(
            buttonType: ButtonType.secondary,
            buttonSize: ButtonSize.medium,
            text: S.current.register,
          ),
        ],
      ),
    );
  }

  @override
  String get screenName => 'Login';
}
