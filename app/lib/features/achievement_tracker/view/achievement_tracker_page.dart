import 'package:auto_route/annotations.dart';
import 'package:design/design.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';
import 'package:logic/src/entity/domain_enum/domain_enum.dart';
import 'package:provider/provider.dart';

import '../../../app.dart';
import '../widgets/achievement_card.dart';

@RoutePage()
class AchievementTrackerPage extends StatefulWidget {
  const AchievementTrackerPage({super.key});

  @override
  State<AchievementTrackerPage> createState() => _AchievementTrackerPageState();
}

class _AchievementTrackerPageState
    extends BasePageState<AchievementTrackerPage, AchievementTrackerViewModel> {
  @override
  Widget buildPage(BuildContext context) {
    return CommonScaffold(
      appBar: CommonAppBar(
        titleText: S.current.achievement,
      ),
      body: Column(
        children: [
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Selector<AchievementTrackerViewModel,
              AchievementTrackerViewModelData>(
            selector: (_, vm) => vm.viewModelData,
            shouldRebuild: (prev, next) =>
                prev.achievementTypes != next.achievementTypes ||
                prev.selectedAchievementType != next.selectedAchievementType,
            builder: (_, vmData, __) {
              return SizedBox(
                height: Dimens.d32.responsive(),
                child: ListView.separated(
                  itemBuilder: (_, index) {
                    final achievementType = vmData.achievementTypes[index];
                    final isSelected =
                        vmData.selectedAchievementType == achievementType;
                    return SizedBox(
                      width: Dimens.d100.responsive(),
                      child: StandardButton(
                        innerGap: 0,
                        leadingIconSize: 0,
                        trailingIconSize: 0,
                        buttonType: isSelected
                            ? ButtonType.primary
                            : ButtonType.secondary,
                        buttonSize: ButtonSize.small,
                        text: achievementType.achievementTypeName,
                        onPressed: () {
                          viewModel.selectAchievementType(achievementType);
                        },
                      ),
                    );
                  },
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (_, __) => SizedBox(
                    width: Dimens.d8.responsive(),
                  ),
                  itemCount: vmData.achievementTypes.length,
                ),
              );
            },
          ),
          SizedBox(
            height: Dimens.d16.responsive(),
          ),
          Expanded(
            child: _buildBody(),
          ),
        ],
      ),
    );
  }

  Widget _buildBody() {
    return Selector<AchievementTrackerViewModel,
        AchievementTrackerViewModelData>(
      builder: (_, vmData, __) {
        return ListView.separated(
          separatorBuilder: (context, index) => SizedBox(
            height: Dimens.d8.responsive(),
          ),
          itemCount: vmData.achievements.length,
          itemBuilder: (context, index) {
            final achievement = vmData.achievements[index];
            return Selector<AppViewModel, AppViewModelData>(
              selector: (_, appVm) => appVm.viewModelData,
              shouldRebuild: (prev, next) =>
                  prev.languageCode != next.languageCode,
              builder: (_, appVmData, __) {
                final achievementName = switch (appVmData.languageCode) {
                  LanguageCode.en => achievement.englishName,
                  LanguageCode.vi => achievement.vietnameseName,
                };

                final achievementDescription = switch (appVmData.languageCode) {
                  LanguageCode.en => achievement.englishDescription,
                  LanguageCode.vi => achievement.vietnameseDescription,
                };

                return AchievementCard(
                  achievementName: achievementName,
                  achievementDescription: achievementDescription,
                  achievementIcon: achievement.mediaUrl,
                  isAchieved: true,
                );
              },
            );
          },
        );
      },
      selector: (_, viewModel) => viewModel.viewModelData,
      shouldRebuild: (prev, next) => prev.achievements != next.achievements,
    );
  }

  @override
  void initViewModels() {
    viewModel.init();
  }

  @override
  String get screenName => 'AchievementTracker';
}
