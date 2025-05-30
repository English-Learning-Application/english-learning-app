import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';

class RegistrationViewWidget extends StatefulWidget {
  const RegistrationViewWidget({super.key});

  @override
  State<RegistrationViewWidget> createState() => _RegistrationViewWidgetState();
}

class _RegistrationViewWidgetState extends State<RegistrationViewWidget> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _confirmPasswordController.dispose();
    super.dispose();
  }

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
            height: Dimens.d20.responsive(),
          ),
          Text(
            S.current.register,
            style: AppTextStyles.s14w400primary().bold.font20(),
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          Text(
            S.current.registerDescription,
            style: AppTextStyles.s14w400primary().font16().medium.grey,
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.username,
            style: AppTextStyles.s14w400primary().font18().bold,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          StandardTextField(
            controller: _usernameController,
            hint: S.current.usernameHint,
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
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.confirmPassword,
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
                controller: _confirmPasswordController,
                hint: S.current.passwordHint,
                obscureText: !vmData.isShowPassword,
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
                onPressed: () async {
                  await context.read<LoginViewModel>().googleSignIn();
                },
              ),
              SizedBox(
                width: Dimens.d16.responsive(),
              ),
              _buildSocialButton(
                icon: Assets.icons.icFacebook.svg(
                  width: Dimens.d24.responsive(),
                  height: Dimens.d24.responsive(),
                ),
                onPressed: () async {
                  await context.read<LoginViewModel>().facebookSignIn();
                },
              ),
            ],
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          StandardButton(
            buttonSize: ButtonSize.medium,
            text: S.current.register,
            onPressed: () async {
              await context.read<LoginViewModel>().registerUser(
                    username: _usernameController.text,
                    email: _emailController.text,
                    password: _passwordController.text,
                    confirmPassword: _confirmPasswordController.text,
                  );
            },
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
}
