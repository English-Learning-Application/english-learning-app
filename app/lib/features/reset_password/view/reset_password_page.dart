import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

@RoutePage()
class ResetPasswordPage extends StatefulWidget {
  const ResetPasswordPage({super.key});

  @override
  State<ResetPasswordPage> createState() => _ResetPasswordPageState();
}

class _ResetPasswordPageState
    extends BasePageState<ResetPasswordPage, ResetPasswordViewModel> {
  late final TextEditingController _channelController = TextEditingController()
    ..disposeBy(disposeBag);
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.resetPassword,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          S.current.resetEmailDescription,
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w400primary().font16().bold,
        ),
        SizedBox(
          height: Dimens.d20.responsive(),
        ),
        StandardTextField(
          controller: _channelController,
          label: S.current.emailOrPhone,
          onChanged: (value) {
            if (value == null) return;
            viewModel.onInputChanged(value);
          },
        ),
        SizedBox(
          height: Dimens.d20.responsive(),
        ),
        Selector<ResetPasswordViewModel, ResetPasswordViewModelData>(
          selector: (context, viewModel) => viewModel.viewModelData,
          shouldRebuild: (previous, next) =>
              previous.isInputValid != next.isInputValid,
          builder: (_, vmData, __) {
            return StandardButton(
              text: S.current.resetPassword,
              buttonSize: ButtonSize.medium,
              buttonType: vmData.isInputValid
                  ? ButtonType.primary
                  : ButtonType.disabled,
              onPressed: () {
                if (vmData.isInputValid) {
                  viewModel.resetPassword();
                }
              },
            );
          },
        ),
      ],
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'ResetPasswordPage';
}
