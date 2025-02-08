import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

@RoutePage()
class ResetPasswordConfirmationPage extends StatefulWidget {
  const ResetPasswordConfirmationPage({
    super.key,
    required this.emailOrPhoneNumber,
  });

  final String emailOrPhoneNumber;
  @override
  State<ResetPasswordConfirmationPage> createState() =>
      _ResetPasswordConfirmationPageState();
}

class _ResetPasswordConfirmationPageState extends BasePageState<
    ResetPasswordConfirmationPage, ResetPasswordConfirmationViewModel> {
  late final TextEditingController _newPasswordController =
      TextEditingController()..disposeBy(disposeBag);
  late final TextEditingController _confirmPasswordController =
      TextEditingController()..disposeBy(disposeBag);
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
      spacing: Dimens.d16.responsive(),
      children: [
        Text(
          S.current.resetPasswordInstruction,
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w400primary().font16().bold,
        ),
        Selector<ResetPasswordConfirmationViewModel,
            ResetPasswordConfirmationViewModelData>(
          selector: (_, viewModel) => viewModel.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.isPasswordVisible != next.isPasswordVisible,
          builder: (_, vmData, __) {
            return StandardTextField(
              controller: _newPasswordController,
              label: S.current.newPassword,
              onChanged: (value) {
                if (value == null) return;
                viewModel.onNewPasswordChanged(value);
              },
              obscureText: !vmData.isPasswordVisible,
              suffixIcon: GestureDetector(
                onTap: () {
                  viewModel.togglePasswordVisibility();
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: Dimens.d8.responsive(),
                  ),
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                  child: Center(
                    child: vmData.isPasswordVisible
                        ? Assets.icons.icEyeClose.svg(
                            width: Dimens.d24.responsive(),
                            height: Dimens.d24.responsive(),
                          )
                        : Assets.icons.icEyeOpen.svg(
                            width: Dimens.d24.responsive(),
                            height: Dimens.d24.responsive(),
                          ),
                  ),
                ),
              ),
            );
          },
        ),
        Selector<ResetPasswordConfirmationViewModel,
            ResetPasswordConfirmationViewModelData>(
          selector: (_, viewModel) => viewModel.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.isConfirmPasswordVisible != next.isConfirmPasswordVisible,
          builder: (_, vmData, __) {
            return StandardTextField(
              controller: _confirmPasswordController,
              label: S.current.confirmPassword,
              onChanged: (value) {
                if (value == null) return;
                viewModel.onConfirmPasswordChanged(value);
              },
              obscureText: !vmData.isConfirmPasswordVisible,
              suffixIcon: GestureDetector(
                onTap: () {
                  viewModel.toggleConfirmPasswordVisibility();
                },
                child: Container(
                  margin: EdgeInsets.only(
                    right: Dimens.d8.responsive(),
                  ),
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                  child: Center(
                    child: vmData.isConfirmPasswordVisible
                        ? Assets.icons.icEyeClose.svg(
                            width: Dimens.d24.responsive(),
                            height: Dimens.d24.responsive(),
                          )
                        : Assets.icons.icEyeOpen.svg(
                            width: Dimens.d24.responsive(),
                            height: Dimens.d24.responsive(),
                          ),
                  ),
                ),
              ),
            );
          },
        ),
        PinCodeTextField(
          appContext: context,
          length: 4,
          onChanged: (otp) {
            viewModel.onCodeChanged(otp);
          },
          keyboardType: TextInputType.number,
          pinTheme: PinTheme(
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(Dimens.d8.responsive()),
            fieldHeight: Dimens.d48.responsive(),
            fieldWidth: Dimens.d48.responsive(),
            borderWidth: Dimens.d1.responsive(),
            activeColor: AppColors.current.primaryColor,
          ),
        ),
        Selector<ResetPasswordConfirmationViewModel,
            ResetPasswordConfirmationViewModelData>(
          selector: (_, viewModel) => viewModel.viewModelData,
          shouldRebuild: (prev, next) => prev.isInputValid != next.isInputValid,
          builder: (_, vmData, __) {
            return StandardButton(
              text: S.current.resetPassword,
              onPressed: vmData.isInputValid
                  ? () {
                      viewModel.resetPassword();
                    }
                  : null,
              buttonSize: ButtonSize.medium,
              buttonType: vmData.isInputValid
                  ? ButtonType.primary
                  : ButtonType.disabled,
            );
          },
        ),
      ],
    );
  }

  @override
  void initViewModels() {
    viewModel.init(emailOrPhoneNumber: widget.emailOrPhoneNumber);
  }

  @override
  String get screenName => 'ResetPasswordConfirmationPage';
}
