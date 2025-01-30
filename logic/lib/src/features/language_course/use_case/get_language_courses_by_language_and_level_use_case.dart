import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_language_courses_by_language_and_level_use_case.freezed.dart';

@Injectable()
class GetLanguageCoursesByLanguageAndLevelUseCase extends BaseFutureUseCase<
    GetLanguageCoursesByLanguageAndLevelInput,
    GetLanguageCoursesByLanguageAndLevelOutput> {
  final LanguageCourseRepository _languageCourseRepository;
  final ExerciseRepository _exerciseRepository;

  const GetLanguageCoursesByLanguageAndLevelUseCase(
    this._languageCourseRepository,
    this._exerciseRepository,
  );

  @override
  Future<GetLanguageCoursesByLanguageAndLevelOutput> buildUseCase(
      GetLanguageCoursesByLanguageAndLevelInput input) async {
    final resp =
        await _languageCourseRepository.getLanguageCoursesByLevelAndLanguage(
      language: input.language,
      level: input.level,
    );
    var resultLanguageCourses = resp;
    if (resp.isNotEmpty) {
      final progress = await _exerciseRepository.getLearningProgress();
      final updatedLanguageCourses = resp.map((languageCourse) {
        final updatedContents =
            languageCourse.languageCourseLearningContents.map((content) {
          final contentSize = content.words.length +
              content.expressions.length +
              content.idioms.length +
              content.sentences.length +
              content.phrasalVerbs.length +
              content.tenses.length +
              content.phonetics.length;

          int completedCount = 0;

          progress.flashCardProgress.map((e) {
            if (e.learningContentId ==
                content.languageCourseLearningContentId) {
              completedCount++;
            }
          }).toList();
          progress.quizProgress.map((e) {
            if (e.learningContentId ==
                content.languageCourseLearningContentId) {
              completedCount++;
            }
          }).toList();
          progress.matchingProgress.map((e) {
            if (e.learningContentId ==
                content.languageCourseLearningContentId) {
              completedCount++;
            }
          }).toList();
          progress.pronunciationProgress.map((e) {
            if (e.learningContentId ==
                content.languageCourseLearningContentId) {
              completedCount++;
            }
          }).toList();

          final progressPercentage = (completedCount / contentSize) * 100;

          return content.copyWith(progress: progressPercentage);
        }).toList();

        return languageCourse.copyWith(
            languageCourseLearningContents: updatedContents);
      }).toList();
      resultLanguageCourses = updatedLanguageCourses;
    }
    return GetLanguageCoursesByLanguageAndLevelOutput(
      languageCourses: resultLanguageCourses,
    );
  }
}

@freezed
class GetLanguageCoursesByLanguageAndLevelInput extends BaseInput
    with _$GetLanguageCoursesByLanguageAndLevelInput {
  const GetLanguageCoursesByLanguageAndLevelInput._();
  const factory GetLanguageCoursesByLanguageAndLevelInput({
    required LearningLanguage language,
    required LanguageLevel level,
  }) = _GetLanguageCoursesByLanguageAndLevelInput;
}

@freezed
class GetLanguageCoursesByLanguageAndLevelOutput extends BaseOutput
    with _$GetLanguageCoursesByLanguageAndLevelOutput {
  const GetLanguageCoursesByLanguageAndLevelOutput._();
  const factory GetLanguageCoursesByLanguageAndLevelOutput({
    required List<LanguageCourse> languageCourses,
  }) = _GetLanguageCoursesByLanguageAndLevelOutput;
}
