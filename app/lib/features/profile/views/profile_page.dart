import 'package:app/app.dart';
import 'package:app/features/profile/widgets/profile_picture.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BasePageState<ProfilePage, ProfileViewModel> {
  late final TextEditingController _oldPassword = TextEditingController()
    ..disposeBy(disposeBag);
  late final TextEditingController _newPassword = TextEditingController()
    ..disposeBy(disposeBag);
  late final TextEditingController _confirmPassword = TextEditingController()
    ..disposeBy(disposeBag);
  void showChangePasswordDialog() async {
    await navigator.showModalBottomSheet(
      enableDrag: true,
      isScrollControlled: true,
      useRootNavigator: true,
      AppPopupInfo.bottomSheet(
        title: S.current.resetPassword,
        child: ListenableProvider<ProfileViewModel>.value(
          value: viewModel,
          child: SizedBox(
            width: double.infinity,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Selector<ProfileViewModel, ProfileViewModelData>(
                  selector: (_, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (prev, curr) {
                    return prev.showOldPassword != curr.showOldPassword;
                  },
                  builder: (_, vmData, __) {
                    return StandardTextField(
                      obscureText: !vmData.showOldPassword,
                      suffixIcon: GestureDetector(
                        onTap: viewModel.toggleShowOldPassword,
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Tooltip(
                              margin: EdgeInsets.zero,
                              padding: EdgeInsets.zero,
                              message: S.current.changePasswordTooltip,
                              child: Assets.icons.icChangePasswordTooltip.svg(
                                width: Dimens.d60.responsive(),
                                height: Dimens.d60.responsive(),
                                colorFilter: ColorFilter.mode(
                                  AppColors.current.primaryTextColor,
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                right: Dimens.d8.responsive(),
                              ),
                              width: Dimens.d24.responsive(),
                              height: Dimens.d24.responsive(),
                              child: Center(
                                child: vmData.showOldPassword
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
                          ],
                        ),
                      ),
                      controller: _oldPassword,
                      hint: S.current.oldPassword,
                    );
                  },
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Selector<ProfileViewModel, ProfileViewModelData>(
                  selector: (_, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (prev, curr) {
                    return prev.showNewPassword != curr.showNewPassword;
                  },
                  builder: (_, vmData, __) {
                    return StandardTextField(
                      obscureText: !vmData.showNewPassword,
                      suffixIcon: GestureDetector(
                        onTap: viewModel.toggleShowNewPassword,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: Dimens.d8.responsive(),
                          ),
                          width: Dimens.d24.responsive(),
                          height: Dimens.d24.responsive(),
                          child: Center(
                            child: vmData.showNewPassword
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
                      controller: _newPassword,
                      hint: S.current.newPassword,
                    );
                  },
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                Selector<ProfileViewModel, ProfileViewModelData>(
                  selector: (_, viewModel) => viewModel.viewModelData,
                  shouldRebuild: (prev, curr) {
                    return prev.showConfirmPassword != curr.showConfirmPassword;
                  },
                  builder: (_, vmData, __) {
                    return StandardTextField(
                      obscureText: !vmData.showConfirmPassword,
                      suffixIcon: GestureDetector(
                        onTap: viewModel.toggleShowConfirmPassword,
                        child: Container(
                          margin: EdgeInsets.only(
                            right: Dimens.d8.responsive(),
                          ),
                          width: Dimens.d24.responsive(),
                          height: Dimens.d24.responsive(),
                          child: Center(
                            child: vmData.showConfirmPassword
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
                      controller: _confirmPassword,
                      hint: S.current.confirmPassword,
                    );
                  },
                ),
                SizedBox(
                  height: Dimens.d16.responsive(),
                ),
                StandardButton(
                  text: S.current.resetPassword,
                  buttonSize: ButtonSize.medium,
                  onPressed: () {
                    viewModel.updatePassword(
                      oldPassword: _oldPassword.text,
                      newPassword: _newPassword.text,
                      confirmPassword: _confirmPassword.text,
                    );
                    _oldPassword.clear();
                    _newPassword.clear();
                    _confirmPassword.clear();
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            Selector<AppViewModel, AppViewModelData>(
              shouldRebuild: (prev, curr) {
                final prevMedia = prev.currentUser.media;
                final currMedia = curr.currentUser.media;

                return prevMedia != currMedia;
              },
              selector: (_, vm) => vm.viewModelData,
              builder: (_, vmData, __) {
                final userMedia = vmData.currentUser.media;
                return ProfilePicture(
                  border: Border.all(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d1.responsive(),
                  ),
                  imageUrl: userMedia.mediaUrl.isNotEmpty
                      ? vmData.currentUser.media.mediaItem
                      : null,
                  width: Dimens.d100.responsive(),
                  height: Dimens.d100.responsive(),
                  onPressed: () async {
                    await navigator.showModalBottomSheet(
                      AppPopupInfo.bottomSheet(
                        child: SizedBox(
                          width: double.infinity,
                          height: Dimens.d300.responsive(),
                          child: Column(
                            children: [
                              SizedBox(
                                height: Dimens.d16.responsive(),
                              ),
                              const Expanded(
                                child: PhotoBottomSheetView(),
                              ),
                            ],
                          ),
                        ),
                        title: S.current.updateProfilePicture,
                      ),
                      enableDrag: true,
                      useRootNavigator: true,
                      isScrollControlled: false,
                    );
                  },
                );
              },
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            Selector<AppViewModel, AppViewModelData>(
              shouldRebuild: (prev, curr) {
                return prev.currentUser != curr.currentUser;
              },
              builder: (_, vmData, __) {
                return Text(
                  vmData.currentUser.username.isEmpty
                      ? S.current.noUsername
                      : vmData.currentUser.username,
                  textAlign: TextAlign.center,
                  style: AppTextStyles.s14w400primary().bold.font16(),
                );
              },
              selector: (_, vm) => vm.viewModelData,
            ),
            Selector<AppViewModel, AppViewModelData>(
              shouldRebuild: (prev, curr) {
                return prev.subscription != curr.subscription;
              },
              builder: (_, appVmData, __) {
                if (appVmData.subscription.id.isEmpty) {
                  return const SizedBox.shrink();
                }
                return Column(
                  children: [
                    SizedBox(
                      height: Dimens.d8.responsive(),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: FoundationColors.warning700,
                        borderRadius:
                            BorderRadius.circular(Dimens.d16.responsive()),
                      ),
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.d16.responsive(),
                        vertical: Dimens.d8.responsive(),
                      ),
                      child: Text(
                        appVmData.subscription.name.localized,
                        textAlign: TextAlign.center,
                        style: AppTextStyles.s14w400primary()
                            .secondary
                            .font14()
                            .bold,
                      ),
                    ),
                  ],
                );
              },
              selector: (_, vm) => vm.viewModelData,
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            StandardButton(
                  text: S.current.editProfile,
                  buttonSize: ButtonSize.small,
                  onPressed: () async {
                    await navigator.push(
                      const AppRouteInfo.editProfile(),
                    );
                  },
                ).let(
                  (it) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: Dimens.d16.responsive(),
                      ),
                      child: it,
                    );
                  },
                ) ??
                const SizedBox.shrink(),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildProfileContainer(
              items: [
                GestureDetector(
                  onTap: showChangePasswordDialog,
                  child: _buildProfileItem(
                    title: S.current.resetPassword,
                    value: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildProfileContainer(
              items: [
                Selector<AppViewModel, AppViewModelData>(
                  shouldRebuild: (prev, curr) {
                    return prev.currentUser != curr.currentUser;
                  },
                  builder: (_, vmData, __) {
                    return _buildProfileItem(
                      title: "Email",
                      value: Expanded(
                        child: Text(
                          vmData.currentUser.email,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.end,
                          style:
                              AppTextStyles.s14w400primary().secondary.font12(),
                        ),
                      ),
                    );
                  },
                  selector: (_, vm) => vm.viewModelData,
                ),
                Selector<AppViewModel, AppViewModelData>(
                  shouldRebuild: (prev, curr) {
                    return prev.currentUser != curr.currentUser;
                  },
                  builder: (_, vmData, __) {
                    final isPhoneNumberEmpty =
                        vmData.currentUser.phoneNumber.isEmpty;
                    final isPhoneNumberVerified =
                        vmData.currentUser.isPhoneNumberVerified;
                    return GestureDetector(
                      onTap: () async {
                        if (isPhoneNumberEmpty || !isPhoneNumberVerified) {
                          await navigator.push(
                            const AppRouteInfo.validatePhoneNumber(),
                          );
                        }
                      },
                      child: _buildProfileItem(
                        title: S.current.phoneNo,
                        value: isPhoneNumberEmpty || !isPhoneNumberVerified
                            ? Icon(
                                Icons.arrow_forward_ios,
                                size: Dimens.d16.responsive(),
                                color: FoundationColors.neutral50,
                              )
                            : Text(
                                vmData.currentUser.phoneNumber,
                                textAlign: TextAlign.end,
                                overflow: TextOverflow.ellipsis,
                                style: AppTextStyles.s14w400primary()
                                    .secondary
                                    .font12(),
                              ),
                      ),
                    );
                  },
                  selector: (_, vm) => vm.viewModelData,
                ),
              ],
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildProfileContainer(
              items: [
                _buildProfileItem(
                  title: S.current.language,
                  value: Selector<AppViewModel, AppViewModelData>(
                    shouldRebuild: (prev, curr) {
                      return prev.languageCode != curr.languageCode;
                    },
                    builder: (_, vmData, __) {
                      return Switch(
                        value: vmData.languageCode == LanguageCode.en,
                        onChanged: (value) async {
                          await appViewModel.appLanguageChanged(
                            value ? LanguageCode.en : LanguageCode.vi,
                          );
                        },
                      );
                    },
                    selector: (_, vm) => vm.viewModelData,
                  ),
                ),
                _buildProfileItem(
                  title: S.current.theme,
                  value: Selector<AppViewModel, AppViewModelData>(
                    shouldRebuild: (prev, curr) {
                      return prev.appTheme != curr.appTheme;
                    },
                    builder: (_, vmData, __) {
                      return Switch.adaptive(
                        value: vmData.appTheme == AppThemeType.dark,
                        onChanged: (value) async {
                          await appViewModel.appThemeChanged(
                            value ? AppThemeType.dark : AppThemeType.light,
                          );
                        },
                      );
                    },
                    selector: (_, vm) => vm.viewModelData,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            _buildProfileContainer(
              items: [
                GestureDetector(
                  onTap: () async {
                    await navigator.push(
                      const AppRouteInfo.progression(),
                    );
                  },
                  child: _buildProfileItem(
                    title: S.current.learningProgression,
                    value: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await navigator.push(
                      const AppRouteInfo.subscription(),
                    );
                  },
                  child: _buildProfileItem(
                    title: S.current.subscription,
                    value: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await navigator.push(
                      const AppRouteInfo.achievement(),
                    );
                  },
                  child: _buildProfileItem(
                    title: S.current.achievement,
                    value: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () async {
                    await navigator.push(
                      const AppRouteInfo.bookmarkCourses(),
                    );
                  },
                  child: _buildProfileItem(
                    title: S.current.bookmarkCourses,
                    value: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: Dimens.d16.responsive(),
            ),
            StandardButton(
              text: S.current.logout,
              buttonSize: ButtonSize.medium,
              buttonType: ButtonType.secondary,
              onPressed: () async {
                await appViewModel.logoutUser();
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProfileContainer({
    required List<Widget> items,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.d16.responsive(),
        vertical: Dimens.d16.responsive(),
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: FoundationColors.primary400,
            width: Dimens.d1.responsive(),
          ),
          left: BorderSide(
            color: FoundationColors.primary400,
            width: Dimens.d1.responsive(),
          ),
          right: BorderSide(
            color: FoundationColors.primary400,
            width: Dimens.d1.responsive(),
          ),
          bottom: BorderSide(
            color: FoundationColors.primary400,
            width: Dimens.d6.responsive(),
          ),
        ),
        color: FoundationColors.primary300.withValues(alpha: 0.8),
        borderRadius: BorderRadius.circular(Dimens.d16.responsive()),
      ),
      child: ListView.separated(
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        itemCount: items.length,
        separatorBuilder: (_, __) {
          return Divider(
            color: FoundationColors.primary400,
            thickness: Dimens.d1.responsive(),
          );
        },
        itemBuilder: (_, index) {
          return items[index];
        },
      ),
    );
  }

  Widget _buildProfileItem({
    required String title,
    required Widget value,
    double? valueWidth,
    bool isExpanded = true,
  }) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: Dimens.d8.responsive(),
      ),
      child: Row(
        children: [
          Text(
            title,
            style: AppTextStyles.s14w400primary().secondary.font14(),
          ),
          SizedBox(
            width: valueWidth ?? Dimens.d8.responsive(),
          ),
          isExpanded ? const Spacer() : const SizedBox.shrink(),
          value,
        ],
      ),
    );
  }

  @override
  void initViewModels() {}

  @override
  String get screenName => 'ProfilePage';
}
