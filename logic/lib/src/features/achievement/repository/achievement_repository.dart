import '../../../../logic.dart';

abstract class AchievementRepository {
  Future<List<Achievement>> getAchievements();
}
