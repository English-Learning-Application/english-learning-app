import 'package:app/app.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:localization/localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

@RoutePage()
class ValidateEmailPage extends StatefulWidget {
  const ValidateEmailPage({super.key});

  @override
  State<ValidateEmailPage> createState() => _ValidateEmailPageState();
}

class _ValidateEmailPageState
    extends BasePageState<ValidateEmailPage, ValidateEmailViewModel>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.verifyEmail,
      ),
      body: Selector<ValidateEmailViewModel, ValidateEmailViewModelData>(
        selector: (_, viewModel) => viewModel.viewModelData,
        shouldRebuild: (previous, next) =>
            previous.validationState != next.validationState,
        builder: (_, viewModelData, __) {
          if (viewModelData.validationState == ValidationState.initial) {
            return _buildBodyRequestVerification();
          }
          return _buildBodyVerificationInput();
        },
      ),
    );
  }

  Widget _buildBodyRequestVerification() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Assets.icons.icMail.svg(
            width: Dimens.d100.responsive(),
            height: Dimens.d100.responsive(),
          ),
          SizedBox(height: Dimens.d16.responsive()),
          Text(
            S.current.verifyEmailSuggestion,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().font20().bold,
          ),
          SizedBox(height: Dimens.d16.responsive()),
          StandardButton(
            text: S.current.sendEmail,
            buttonSize: ButtonSize.small,
            onPressed: () async {
              await viewModel.sendEmailVerification();
            },
          )
        ],
      ),
    );
  }

  Widget _buildBodyVerificationInput() {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          Assets.icons.icMail.svg(
            width: Dimens.d100.responsive(),
            height: Dimens.d100.responsive(),
          ),
          SizedBox(height: Dimens.d16.responsive()),
          Text(
            S.current.verifyEmailDescription,
            textAlign: TextAlign.center,
            style: AppTextStyles.s14w400primary().bold,
          ),
          SizedBox(height: Dimens.d16.responsive()),
          PinCodeTextField(
            appContext: context,
            length: 4,
            onChanged: (otp) {
              viewModel.updateInputOtp(otp);
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
          SizedBox(height: Dimens.d16.responsive()),
          Selector<ValidateEmailViewModel, ValidateEmailViewModelData>(
            builder: (_, vmData, __) {
              if (vmData.durationTillResendOtp == null) {
                return StandardButton(
                  text: S.current.resendOtp,
                  buttonSize: ButtonSize.small,
                  onPressed: () async {
                    await viewModel.sendEmailVerification();
                  },
                );
              } else {
                return Text(
                  S.current.resendOtpAt(
                    DateTimeUtils.formattedDurationToHHMMSS(
                      vmData.durationTillResendOtp!,
                    ),
                  ),
                  style: AppTextStyles.s14w400primary().font12().thin,
                );
              }
            },
            shouldRebuild: (previous, next) =>
                previous.durationTillResendOtp != next.durationTillResendOtp,
            selector: (_, viewModel) => viewModel.viewModelData,
          ),
          SizedBox(height: Dimens.d16.responsive()),
          Selector<ValidateEmailViewModel, ValidateEmailViewModelData>(
            builder: (_, vmData, __) {
              return StandardButton(
                text: S.current.verifyEmail,
                buttonSize: ButtonSize.small,
                buttonType: vmData.inputOtp.length == 4
                    ? ButtonType.primary
                    : ButtonType.disabled,
                onPressed: () async {
                  if (vmData.inputOtp.length != 4) {
                    return;
                  }
                  await viewModel.verifyEmailOtp();
                },
              );
            },
            shouldRebuild: (previous, next) =>
                previous.inputOtp != next.inputOtp,
            selector: (_, viewModel) => viewModel.viewModelData,
          ),
        ],
      ),
    );
  }

  @override
  void initViewModels() {
    _ticker = createTicker(
      (elapsed) {
        final duration = viewModel.viewModelData.durationTillResendOtp;
        if (duration != null && duration != Duration.zero) {
          final resendTime = viewModel.viewModelData.resendOtpTime;
          final durationTilResend = resendTime!.difference(DateTime.now());
          // if the duration is less than 0, stop the ticker
          if (durationTilResend.isNegative) {
            viewModel.updateDuration(Duration.zero);
            return;
          }
          viewModel.updateDuration(durationTilResend);
        }
      },
    );
    _ticker.start();
  }

  @override
  dispose() {
    _ticker.stop(canceled: true);
    _ticker.dispose();
    super.dispose();
  }

  @override
  String get screenName => 'ValidateEmailPage';
}
