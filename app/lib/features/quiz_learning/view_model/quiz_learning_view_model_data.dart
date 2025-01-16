part of 'quiz_learning.dart';

@freezed
class QuizLearningViewModelData extends BaseViewModelData
    with _$QuizLearningViewModelData {
  const QuizLearningViewModelData._();

  const factory QuizLearningViewModelData({
    @Default(LearningContentType.word) LearningContentType learningContentType,
    @Default([]) List<QuizLearningEntity> quizLearningEntities,
    @Default(LearningLanguage.english) LearningLanguage learningLanguage,
    @Default(LanguageCourseLearningContent())
    LanguageCourseLearningContent languageCourseLearningContent,
    @Default(0) int currentLearningContentIndex,
    @Default(0) int totalLearningContentCount,
    @Default([]) List<String> correctContentIds,
    @Default([]) List<String> incorrectContentIds,
  }) = _QuizLearningViewModelData;
}
