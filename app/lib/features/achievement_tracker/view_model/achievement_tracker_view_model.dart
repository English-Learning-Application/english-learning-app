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
            achievements: resp.achievements,
          ),
        );
      },
    );
  }
}
