part of 'achievement_tracker.dart';

@Injectable()
class AchievementTrackerViewModel
    extends BaseViewModel<AchievementTrackerViewModelData> {
  final GetAllAchievementUseCase _getAchievementsUseCase;

  AchievementTrackerViewModel(this._getAchievementsUseCase)
      : super(const AchievementTrackerViewModelData());

  void init() async {
    await runViewModelCatching(
      action: () async {
        final resp = await _getAchievementsUseCase.buildUseCase(
          const GetAllAchievementInput(),
        );

        updateData(
          viewModelData.copyWith(
            originalAchievements: resp.achievements,
            achievements: resp.achievements,
            achievementTypes: resp.achievementTypes,
          ),
        );
      },
    );
  }

  void selectAchievementType(AchievementType type) {
    if (viewModelData.selectedAchievementType == type) {
      final achievementList = [...viewModelData.originalAchievements];
      updateData(
        viewModelData.copyWith(
          selectedAchievementType: null,
          achievements: achievementList,
        ),
      );
      return;
    }
    updateData(
      viewModelData.copyWith(
        selectedAchievementType: type,
        achievements: viewModelData.originalAchievements
            .where((element) => element.achievementType == type)
            .toList(),
      ),
    );
  }
}
