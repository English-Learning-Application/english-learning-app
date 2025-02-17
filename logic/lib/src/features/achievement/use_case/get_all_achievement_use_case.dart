import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_all_achievement_use_case.freezed.dart';

@Injectable()
class GetAllAchievementUseCase
    extends BaseFutureUseCase<GetAllAchievementInput, GetAllAchievementOutput> {
  final AchievementRepository _achievementRepository;

  const GetAllAchievementUseCase(
    this._achievementRepository,
  );

  @override
  Future<GetAllAchievementOutput> buildUseCase(
      GetAllAchievementInput input) async {
    final resp = await _achievementRepository.getAchievements();

    final achievementTypes = resp
        .map(
          (e) => e.achievementType,
        )
        .toSet()
        .toList();

    return GetAllAchievementOutput(
      achievements: resp,
      achievementTypes: achievementTypes,
    );
  }
}

@freezed
class GetAllAchievementInput extends BaseInput with _$GetAllAchievementInput {
  const factory GetAllAchievementInput() = _GetAllAchievementInput;
}

@freezed
class GetAllAchievementOutput extends BaseOutput
    with _$GetAllAchievementOutput {
  const factory GetAllAchievementOutput({
    required List<AchievementType> achievementTypes,
    required List<Achievement> achievements,
  }) = _GetAllAchievementOutput;
}
