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
                return ProfilePicture(
                  border: Border.all(
                    color: AppColors.current.primaryColor,
                    width: Dimens.d1.responsive(),
                  ),
                  imageUrl: vmData.currentUser.media.mediaItem,
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
                    return _buildProfileItem(
                      title: S.current.phoneNo,
                      value: isPhoneNumberEmpty || !isPhoneNumberVerified
                          ? GestureDetector(
                              child: Icon(
                                Icons.arrow_forward_ios,
                                size: Dimens.d16.responsive(),
                                color: FoundationColors.neutral50,
                              ),
                              onTap: () async {
                                await navigator.push(
                                  const AppRouteInfo.validatePhoneNumber(),
                                );
                              },
                            )
                          : Text(
                              vmData.currentUser.phoneNumber,
                              textAlign: TextAlign.end,
                              overflow: TextOverflow.ellipsis,
                              style: AppTextStyles.s14w400primary()
                                  .secondary
                                  .font12(),
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
                _buildProfileItem(
                  title: S.current.subscription,
                  value: GestureDetector(
                    child: Icon(
                      Icons.arrow_forward_ios,
                      size: Dimens.d16.responsive(),
                      color: FoundationColors.neutral50,
                    ),
                    onTap: () async {
                      await navigator.push(
                        const AppRouteInfo.subscription(),
                      );
                    },
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
        color: FoundationColors.primary300,
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
