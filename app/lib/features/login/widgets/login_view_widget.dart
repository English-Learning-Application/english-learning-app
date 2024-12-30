import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';
import '../../../app.dart';

class LoginViewWidget extends StatefulWidget {
  const LoginViewWidget({super.key});

  @override
  State<LoginViewWidget> createState() => _LoginViewWidgetState();
}

class _LoginViewWidgetState extends State<LoginViewWidget> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Assets.images.appIcon.image(
              width: Dimens.d160.responsive(),
              height: Dimens.d160.responsive(),
            ),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.login,
            style: AppTextStyles.s14w400primary().ultraBold.font28(),
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Text(
            S.current.loginDescription,
            style: AppTextStyles.s14w400primary().font16().medium.grey,
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            "Email",
            style: AppTextStyles.s14w400primary().font18().bold,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          StandardTextField(
            controller: _emailController,
            hint: S.current.emailHint,
            borderRadius: BorderRadius.circular(
              Dimens.d32.responsive(),
            ),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.password,
            style: AppTextStyles.s14w400primary().font18().bold,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Selector<LoginViewModel, LoginViewModelData>(
            selector: (_, vm) {
              return vm.viewModelData;
            },
            shouldRebuild: (previous, next) =>
                previous.isShowPassword != next.isShowPassword,
            builder: (_, vmData, __) {
              return StandardTextField(
                controller: _passwordController,
                hint: S.current.passwordHint,
                obscureText: !vmData.isShowPassword,
                borderRadius: BorderRadius.circular(
                  Dimens.d32.responsive(),
                ),
                suffixIcon: GestureDetector(
                  onTap: () {
                    context.read<LoginViewModel>().setIsShowPassword(
                          !vmData.isShowPassword,
                        );
                  },
                  child: Container(
                    margin: EdgeInsets.only(
                      right: Dimens.d8.responsive(),
                    ),
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                    child: Center(
                      child: vmData.isShowPassword
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
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              S.current.forgotPassword,
              style: AppTextStyles.s14w400primary().font12().bold.neutral900,
            ),
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          StandardButton(
            buttonSize: ButtonSize.medium,
            text: S.current.login,
            onPressed: () {},
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Row(
            children: [
              Expanded(
                child: Divider(
                  color: AppColors.current.primaryColor,
                  thickness: Dimens.d1.responsive(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: Dimens.d8.responsive(),
                ),
                child: Text(
                  S.current.or.toUpperCase(),
                  style:
                      AppTextStyles.s14w400primary().font12().bold.neutral900,
                ),
              ),
              Expanded(
                child: Divider(
                  color: AppColors.current.primaryColor,
                  thickness: Dimens.d1.responsive(),
                ),
              ),
            ],
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildSocialButton(
                icon: Assets.icons.icGoogle.svg(
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                ),
                onPressed: () {},
              ),
              SizedBox(
                width: Dimens.d16.responsive(),
              ),
              _buildSocialButton(
                icon: Assets.icons.icFacebook.svg(
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                ),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialButton({
    required Widget icon,
    required VoidCallback onPressed,
  }) {
    return Container(
      width: Dimens.d48.responsive(),
      height: Dimens.d48.responsive(),
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: AppColors.current.primaryColor,
          width: Dimens.d1.responsive(),
        ),
      ),
      child: IconButton(
        icon: icon,
        onPressed: onPressed,
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }
}
