import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../data_source/achievement_api_service.dart';
import '../mapper/api_achievement_data_mapper.dart';

@LazySingleton(as: AchievementRepository)
class AchievementRepositoryImpl implements AchievementRepository {
  final AchievementApiService _achievementApiService;
  final ApiAchievementDataMapper _apiAchievementDataMapper;

  const AchievementRepositoryImpl(
    this._achievementApiService,
    this._apiAchievementDataMapper,
  );

  @override
  Future<List<Achievement>> getAchievements() async {
    final response = await _achievementApiService.getAchievements();

    return _apiAchievementDataMapper.mapToListEntities(response?.results);
  }
}
