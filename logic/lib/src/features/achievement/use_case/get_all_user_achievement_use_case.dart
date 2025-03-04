import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_all_user_achievement_use_case.freezed.dart';

@Injectable()
class GetAllUserAchievementUseCase extends BaseFutureUseCase<
    GetAllUserAchievementInput, GetAllUserAchievementOutput> {
  final AchievementRepository _achievementRepository;

  const GetAllUserAchievementUseCase(
    this._achievementRepository,
  );

  @override
  Future<GetAllUserAchievementOutput> buildUseCase(
      GetAllUserAchievementInput input) async {
    final resp = await _achievementRepository.getUserAchievements();

    return GetAllUserAchievementOutput(
      userAchievements: resp,
    );
  }
}

@freezed
class GetAllUserAchievementInput extends BaseInput
    with _$GetAllUserAchievementInput {
  const factory GetAllUserAchievementInput() = _GetAllUserAchievementInput;
}

@freezed
class GetAllUserAchievementOutput extends BaseOutput
    with _$GetAllUserAchievementOutput {
  const factory GetAllUserAchievementOutput({
    required List<UserAchievement> userAchievements,
  }) = _GetAllUserAchievementOutput;
}
