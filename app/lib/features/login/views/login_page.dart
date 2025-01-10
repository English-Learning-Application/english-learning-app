import 'package:app/features/login/widgets/registration_view_widget.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../widgets/login_view_widget.dart';

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
  Future<bool> onPopInvoke() {
    if (viewModel.viewModelData.loginMode != LoginMode.none) {
      viewModel.setLoginMode(LoginMode.none);
      return Future.value(false);
    }
    return super.onPopInvoke();
  }

  @override
  Widget buildPage(BuildContext context) {
    return Selector<LoginViewModel, LoginViewModelData>(
      selector: (_, viewModel) {
        return viewModel.viewModelData;
      },
      shouldRebuild: (previous, next) => previous.loginMode != next.loginMode,
      builder: (_, viewModelData, __) => CommonScaffold(
        appBar: CommonAppBar(
          backgroundColor: AppColors.current.backgroundColor,
          leadingIcon: viewModelData.loginMode != LoginMode.none
              ? LeadingIcon.back
              : LeadingIcon.none,
          onLeadingPressed: () {
            if (viewModelData.loginMode != LoginMode.none) {
              viewModel.setLoginMode(LoginMode.none);
            }
          },
        ),
        body: _buildBody(viewModelData.loginMode),
      ),
    );
  }

  Widget _buildBody(LoginMode loginMode) {
    switch (loginMode) {
      case LoginMode.login:
        return const LoginViewWidget();
      case LoginMode.register:
        return const RegistrationViewWidget();
      default:
        return _buildIntroductionBody();
    }
  }

  Widget _buildIntroductionBody() {
    return Column(
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
          onPressed: () {
            viewModel.setLoginMode(LoginMode.login);
          },
          buttonSize: ButtonSize.medium,
          text: S.current.login,
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        StandardButton(
          onPressed: () {
            viewModel.setLoginMode(LoginMode.register);
          },
          buttonType: ButtonType.secondary,
          buttonSize: ButtonSize.medium,
          text: S.current.register,
        ),
      ],
    );
  }

  @override
  String get screenName => 'Login';
}
