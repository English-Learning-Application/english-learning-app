part of 'achievement_tracker.dart';

@Injectable()
class AchievementTrackerViewModel
    extends BaseViewModel<AchievementTrackerViewModelData> {
  final GetAllAchievementUseCase _getAchievementsUseCase;
  final GetAllUserAchievementUseCase _getUserAchievementsUseCase;

  AchievementTrackerViewModel(
    this._getAchievementsUseCase,
    this._getUserAchievementsUseCase,
  ) : super(const AchievementTrackerViewModelData());

  void init() async {
    await runViewModelCatching(
      action: () async {
        var achievements = <Achievement>[];
        var userAchievements = <UserAchievement>[];
        var achievementTypes = <AchievementType>[];
        await Future.wait(
          [
            _getAchievementsUseCase
                .buildUseCase(
              const GetAllAchievementInput(),
            )
                .then((output) {
              achievements.addAll(output.achievements);
              achievementTypes.addAll(output.achievementTypes);
            }),
            _getUserAchievementsUseCase
                .buildUseCase(
              const GetAllUserAchievementInput(),
            )
                .then((output) {
              userAchievements.addAll(output.userAchievements);
            }),
          ],
        );

        updateData(
          viewModelData.copyWith(
            originalAchievements: achievements,
            achievements: achievements,
            achievementTypes: achievementTypes,
            userAchievements: userAchievements,
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
