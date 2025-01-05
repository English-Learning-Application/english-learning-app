import 'package:app/app.dart';
import 'package:app/features/complete_registration/widgets/select_language_card.dart';
import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/logic.dart';
import 'package:provider/provider.dart';

import '../widgets/select_learning_mode_card.dart';

@RoutePage()
class CompleteRegistrationPage extends StatefulWidget {
  const CompleteRegistrationPage({super.key});

  @override
  State<CompleteRegistrationPage> createState() =>
      _CompleteRegistrationPageState();
}

class _CompleteRegistrationPageState extends BasePageState<
    CompleteRegistrationPage, CompleteRegistrationViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            S.current.completeYourProfile,
            style: AppTextStyles.s14w400primary().font30().primary200.ultraBold,
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Text(
            S.current.completeYourProfileDescription,
            style: AppTextStyles.s14w400primary().font16().primary200.regular,
          ),
          SizedBox(
            height: Dimens.d8.responsive(),
          ),
          _buildLanguageSelection(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildLearningLanguageSelection(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          _buildSelectLearningModes(),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          StandardButton(
            buttonSize: ButtonSize.medium,
            text: S.current.confirm,
            onPressed: () async {
              await viewModel.onConfirmSelection();
            },
          ),
        ],
      ),
    );
  }

  Widget _buildLanguageSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.selectNativeLanguage,
          style:
              AppTextStyles.s14w400primary().font16().primary200.regular.bold,
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
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
                viewModel.onNativeLanguageSelected(LearningLanguage.vietnamese);
              },
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.selectedNativeLanguage != next.selectedNativeLanguage,
          builder: (_, vm, __) {
            return SelectLanguageCard(
              countryIcon: Assets.icons.icEngland.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              isSelected: vm.selectedNativeLanguage == LearningLanguage.english,
              languageName: LearningLanguage.english,
              onTap: () {
                viewModel.onNativeLanguageSelected(LearningLanguage.english);
              },
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.selectedNativeLanguage != next.selectedNativeLanguage,
          builder: (_, vm, __) {
            return SelectLanguageCard(
              countryIcon: Assets.icons.icFrance.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              isSelected: vm.selectedNativeLanguage == LearningLanguage.french,
              languageName: LearningLanguage.french,
              onTap: () {
                viewModel.onNativeLanguageSelected(LearningLanguage.french);
              },
            );
          },
        ),
      ],
    );
  }

  Widget _buildLearningLanguageSelection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.current.selectLearningLanguage,
          style:
              AppTextStyles.s14w400primary().font16().primary200.regular.bold,
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.selectedLearningLanguage != next.selectedLearningLanguage,
          builder: (_, vm, __) {
            return SelectLanguageCard(
              countryIcon: Assets.icons.icVietnam.svg(
                width: Dimens.d24.responsive(),
                height: Dimens.d24.responsive(),
              ),
              isSelected:
                  vm.selectedLearningLanguage == LearningLanguage.vietnamese,
              languageName: LearningLanguage.vietnamese,
              onTap: () {
                viewModel.onLanguageSelected(LearningLanguage.vietnamese);
              },
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.selectedLearningLanguage != next.selectedLearningLanguage,
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
                viewModel.onLanguageSelected(LearningLanguage.english);
              },
            );
          },
        ),
        SizedBox(
          height: Dimens.d8.responsive(),
        ),
        Selector<CompleteRegistrationViewModel,
            CompleteRegistrationViewModelData>(
          selector: (_, vm) => vm.viewModelData,
          shouldRebuild: (prev, next) =>
              prev.selectedLearningLanguage != next.selectedLearningLanguage,
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
                viewModel.onLanguageSelected(LearningLanguage.french);
              },
            );
          },
        ),
      ],
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
            return Selector<CompleteRegistrationViewModel,
                CompleteRegistrationViewModelData>(
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
  void initViewModels() {}

  @override
  String get screenName => 'CompleteRegistrationPage';
}
