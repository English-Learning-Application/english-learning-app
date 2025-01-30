import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:localization/localization.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';

@RoutePage()
class ValidatePhoneNumberPage extends StatefulWidget {
  const ValidatePhoneNumberPage({super.key});

  @override
  State<ValidatePhoneNumberPage> createState() =>
      _ValidatePhoneNumberPageState();
}

class _ValidatePhoneNumberPageState
    extends BasePageState<ValidatePhoneNumberPage, ValidatePhoneNumberViewModel>
    with SingleTickerProviderStateMixin {
  late final Ticker _ticker;
  final TextEditingController _controller = TextEditingController();
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.verifyPhoneNumber,
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    final appUser = appViewModel.viewModelData.currentUser;
    final appUserPhoneNumber = appUser.phoneNumber;
    _controller.text = appUserPhoneNumber;
    viewModel.onPhoneNumberChanged(appUserPhoneNumber);
    _ticker = createTicker(
      (_) {
        final duration = viewModel.viewModelData.durationUntilResendOtp;
        if (duration != null && duration != Duration.zero) {
          final resendTime = viewModel.viewModelData.resendOtpTime;
          final durationTilResend = resendTime!.difference(DateTime.now());
          if (durationTilResend.isNegative) {
            viewModel.updateDurationUntilResendOtp(Duration.zero);
            return;
          }
          viewModel.updateDurationUntilResendOtp(durationTilResend);
        }
      },
    );
    _ticker.start();
  }

  Widget _buildBody() {
    return Selector<ValidatePhoneNumberViewModel,
        ValidatePhoneNumberViewModelData>(
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (previous, next) =>
          previous.validationState != next.validationState,
      builder: (_, vmData, __) {
        final validationState = vmData.validationState;
        if (validationState == PhoneValidationState.receivedOtp) {
          return _buildBodyVerificationInput();
        } else if (validationState == PhoneValidationState.success) {
          return _buildBodySuccess();
        }
        return Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.images.phoneVerification.image(
              width: Dimens.d100.responsive(),
              height: Dimens.d100.responsive(),
            ),
            SizedBox(height: Dimens.d16.responsive()),
            Text(
              S.current.verifyPhoneNumberSuggestion,
              textAlign: TextAlign.center,
              style: AppTextStyles.s14w400primary().font20().bold,
            ),
            SizedBox(height: Dimens.d16.responsive()),
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: Dimens.d16.responsive(),
              ),
              decoration: BoxDecoration(
                color: FoundationColors.neutral100,
                borderRadius: BorderRadius.circular(
                  Dimens.d8.responsive(),
                ),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Assets.icons.icVietnam.svg(
                    width: Dimens.d16.responsive(),
                    height: Dimens.d16.responsive(),
                  ),
                  SizedBox(width: Dimens.d8.responsive()),
                  Text(
                    '+84',
                    style: AppTextStyles.s14w400primary().font12(),
                  ),
                  Expanded(
                    child: StandardTextField(
                      borderRadius: BorderRadius.circular(
                        Dimens.d8.responsive(),
                      ),
                      color: FoundationColors.neutral100,
                      onChanged: (value) {
                        viewModel.onPhoneNumberChanged(value ?? '');
                      },
                      hint: S.current.phoneNo,
                      border: InputBorder.none,
                      controller: _controller,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: Dimens.d16.responsive()),
            Selector<ValidatePhoneNumberViewModel,
                ValidatePhoneNumberViewModelData>(
              builder: (_, vmData, __) {
                final isValidPhoneNumber = vmData.inputPhoneNumber.isNotEmpty &&
                    ValidationUtils.isValidVietnamesePhoneNumber(
                      vmData.inputPhoneNumber,
                    );

                return StandardButton(
                  text: S.current.sendOtp,
                  buttonSize: ButtonSize.small,
                  buttonType: isValidPhoneNumber
                      ? ButtonType.primary
                      : ButtonType.disabled,
                  onPressed: isValidPhoneNumber
                      ? () async {
                          await viewModel.sendOtp();
                        }
                      : null,
                );
              },
              selector: (_, viewModel) => viewModel.viewModelData,
            ),
          ],
        );
      },
    );
  }

  Widget _buildBodyVerificationInput() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.phoneVerification.image(
          width: Dimens.d100.responsive(),
          height: Dimens.d100.responsive(),
        ),
        SizedBox(height: Dimens.d16.responsive()),
        Text(
          S.current.verifyPhoneNumberDescription,
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w400primary().font20().bold,
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
        Selector<ValidatePhoneNumberViewModel,
            ValidatePhoneNumberViewModelData>(
          builder: (_, vmData, __) {
            final isValidOtp = vmData.inputOtp.length == 4;
            return StandardButton(
              text: S.current.verifyPhoneNumber,
              buttonSize: ButtonSize.small,
              buttonType: isValidOtp ? ButtonType.primary : ButtonType.disabled,
              onPressed: isValidOtp
                  ? () async {
                      await viewModel.verifyOtp();
                    }
                  : null,
            );
          },
          selector: (_, viewModel) => viewModel.viewModelData,
        ),
        SizedBox(height: Dimens.d16.responsive()),
        Selector<ValidatePhoneNumberViewModel,
            ValidatePhoneNumberViewModelData>(
          builder: (_, vmData, __) {
            final duration = vmData.durationUntilResendOtp;
            if (duration == null || duration == Duration.zero) {
              return StandardButton(
                text: S.current.resendOtp,
                buttonSize: ButtonSize.small,
                onPressed: () async {
                  await viewModel.sendOtp();
                },
              );
            }
            return Text(
              S.current.resendOtpAt(
                DateTimeUtils.formattedDurationToHHMMSS(
                  duration,
                ),
              ),
              style: AppTextStyles.s14w400primary().font12(),
            );
          },
          selector: (_, viewModel) => viewModel.viewModelData,
        ),
      ],
    );
  }

  Widget _buildBodySuccess() {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Assets.images.phoneVerification.image(
          width: Dimens.d100.responsive(),
          height: Dimens.d100.responsive(),
        ),
        SizedBox(height: Dimens.d16.responsive()),
        Text(
          S.current.verifyPhoneNumberSuccess,
          textAlign: TextAlign.center,
          style: AppTextStyles.s14w400primary().font20().bold,
        ),
        SizedBox(height: Dimens.d16.responsive()),
        StandardButton(
          text: S.current.confirm,
          buttonSize: ButtonSize.small,
          onPressed: () {
            navigator.popTop();
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    _ticker.stop(canceled: true);
    _ticker.dispose();
    super.dispose();
  }

  @override
  String get screenName => 'ValidatePhoneNumberPage';
}
