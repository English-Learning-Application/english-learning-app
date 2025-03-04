import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../../../../data.dart';
import '../data_source/achievement_api_service.dart';

@LazySingleton(as: AchievementRepository)
class AchievementRepositoryImpl implements AchievementRepository {
  final AchievementApiService _achievementApiService;
  final ApiAchievementDataMapper _apiAchievementDataMapper;
  final ApiUserAchievementDataMapper _apiUserAchievementDataMapper;

  const AchievementRepositoryImpl(
    this._achievementApiService,
    this._apiUserAchievementDataMapper,
    this._apiAchievementDataMapper,
  );

  @override
  Future<List<Achievement>> getAchievements() async {
    final response = await _achievementApiService.getAchievements();

    return _apiAchievementDataMapper.mapToListEntities(response?.results);
  }

  @override
  Future<List<UserAchievement>> getUserAchievements() async {
    final resp = await _achievementApiService.getUserAchievements();

    return _apiUserAchievementDataMapper.mapToListEntities(resp?.results);
  }
}
