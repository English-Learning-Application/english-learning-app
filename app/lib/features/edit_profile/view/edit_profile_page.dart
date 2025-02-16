import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';
import 'package:services/services.dart';

import '../../../app.dart';
import '../../complete_registration/widgets/select_language_card.dart';
import '../../complete_registration/widgets/select_learning_mode_card.dart';

@RoutePage()
class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState
    extends BasePageState<EditProfilePage, EditProfileViewModel> {
  late final TextEditingController _usernameController = TextEditingController()
    ..disposeBy(disposeBag);

  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.editProfile,
      ),
      body: _buildBody(),
    );
  }

  @override
  void initViewModels() {
    viewModel.onInit();
    _usernameController.text = viewModel.viewModelData.inputUsername;
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildUsernameInput(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildNativeLanguageInput(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildLearningLanguageInput(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildSelectLearningModes(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Selector<EditProfileViewModel, EditProfileViewModelData>(
            shouldRebuild: (previous, next) {
              final prevUsername = previous.inputUsername;
              final nextUsername = next.inputUsername;

              final prevLearningModes = previous.selectedLearningTypes;
              final nextLearningModes = next.selectedLearningTypes;

              return prevUsername != nextUsername ||
                  prevLearningModes != nextLearningModes;
            },
            builder: (_, vmData, __) {
              final usernameNotEmpty = vmData.inputUsername.isNotEmpty;
              final learningModesNotEmpty =
                  vmData.selectedLearningTypes.isNotEmpty;

              return StandardButton(
                text: S.current.confirm,
                buttonType: usernameNotEmpty && learningModesNotEmpty
                    ? ButtonType.primary
                    : ButtonType.disabled,
                buttonSize: ButtonSize.small,
                onPressed: () async {
                  await viewModel.updateUserProfile();
                },
              );
            },
            selector: (_, viewModel) => viewModel.viewModelData,
          ),
        ],
      ),
    );
  }

  Widget _buildUsernameInput() {
    return Selector<EditProfileViewModel, EditProfileViewModelData>(
      shouldRebuild: (previous, next) =>
          previous.inputUsername != next.inputUsername,
      selector: (_, viewModel) => viewModel.viewModelData,
      builder: (_, viewModelData, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.username,
              style: AppTextStyles.s14w400primary().font16().medium,
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            StandardTextField(
              controller: _usernameController,
              label: S.current.username,
              onChanged: (value) {
                if (value == null) return;
                viewModel.onUsernameChanged(value);
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildNativeLanguageInput() {
    return Selector<EditProfileViewModel, EditProfileViewModelData>(
      shouldRebuild: (previous, next) =>
          previous.selectedNativeLanguage != next.selectedNativeLanguage,
      selector: (_, viewModel) => viewModel.viewModelData,
      builder: (_, viewModelData, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.selectNativeLanguage,
              style: AppTextStyles.s14w400primary()
                  .font16()
                  .primary200
                  .regular
                  .bold,
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedNativeLanguage != next.selectedNativeLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icVietnam.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected:
                      vm.selectedNativeLanguage == LearningLanguage.vietnamese,
                  languageName: LearningLanguage.vietnamese,
                  onTap: () {
                    viewModel
                        .onNativeLanguageSelected(LearningLanguage.vietnamese);
                  },
                );
              },
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedNativeLanguage != next.selectedNativeLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icEngland.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected:
                      vm.selectedNativeLanguage == LearningLanguage.english,
                  languageName: LearningLanguage.english,
                  onTap: () {
                    viewModel
                        .onNativeLanguageSelected(LearningLanguage.english);
                  },
                );
              },
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedNativeLanguage != next.selectedNativeLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icFrance.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected:
                      vm.selectedNativeLanguage == LearningLanguage.french,
                  languageName: LearningLanguage.french,
                  onTap: () {
                    viewModel.onNativeLanguageSelected(LearningLanguage.french);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildLearningLanguageInput() {
    return Selector<EditProfileViewModel, EditProfileViewModelData>(
      shouldRebuild: (previous, next) =>
          previous.selectedLearningLanguage != next.selectedLearningLanguage,
      selector: (_, viewModel) => viewModel.viewModelData,
      builder: (_, viewModelData, __) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.current.selectLearningLanguage,
              style: AppTextStyles.s14w400primary()
                  .font16()
                  .primary200
                  .regular
                  .bold,
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedLearningLanguage !=
                  next.selectedLearningLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icVietnam.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected: vm.selectedLearningLanguage ==
                      LearningLanguage.vietnamese,
                  languageName: LearningLanguage.vietnamese,
                  onTap: () {
                    viewModel.onLearningLanguageSelected(
                        LearningLanguage.vietnamese);
                  },
                );
              },
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedLearningLanguage !=
                  next.selectedLearningLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icEngland.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected:
                      vm.selectedLearningLanguage == LearningLanguage.english,
                  languageName: LearningLanguage.english,
                  onTap: () {
                    viewModel
                        .onLearningLanguageSelected(LearningLanguage.english);
                  },
                );
              },
            ),
            SizedBox(
              height: Dimens.d8.responsive(),
            ),
            Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedLearningLanguage !=
                  next.selectedLearningLanguage,
              builder: (_, vm, __) {
                return SelectLanguageCard(
                  countryIcon: Assets.icons.icFrance.svg(
                    width: Dimens.d24.responsive(),
                    height: Dimens.d24.responsive(),
                  ),
                  isSelected:
                      vm.selectedLearningLanguage == LearningLanguage.french,
                  languageName: LearningLanguage.french,
                  onTap: () {
                    viewModel
                        .onLearningLanguageSelected(LearningLanguage.french);
                  },
                );
              },
            ),
          ],
        );
      },
    );
  }

  Widget _buildSelectLearningModes() {
    return Column(
      spacing: Dimens.d8.responsive(),
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.selectLearningModes,
          style:
              AppTextStyles.s14w400primary().font16().primary200.regular.bold,
        ),
        ...LearningType.values.map(
          (learningType) {
            return Selector<EditProfileViewModel, EditProfileViewModelData>(
              selector: (_, vm) => vm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.selectedLearningTypes != next.selectedLearningTypes,
              builder: (_, vm, __) {
                return SelectLearningModeCard(
                  learningTypeIcon: learningType.icon.svg(
                    width: Dimens.d40.responsive(),
                    height: Dimens.d40.responsive(),
                  ),
                  learningType: learningType,
                  isSelected: vm.selectedLearningTypes.contains(learningType),
                  onTap: () {
                    viewModel.onLearningTypeSelected(learningType);
                  },
                );
              },
            );
          },
        ),
      ],
    );
  }

  @override
  String get screenName => 'EditProfilePage';
}
