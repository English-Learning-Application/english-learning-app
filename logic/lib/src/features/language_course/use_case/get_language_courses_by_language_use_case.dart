import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import '../../../../logic.dart';

part 'get_language_courses_by_language_use_case.freezed.dart';

@Injectable()
class GetLanguageCoursesByLanguageUseCase extends BaseFutureUseCase<
    GetLanguageCoursesByLanguageInput, GetLanguageCoursesByLanguageOutput> {
  final LanguageCourseRepository _languageCourseRepository;
  final ExerciseRepository _exerciseRepository;

  const GetLanguageCoursesByLanguageUseCase(
    this._languageCourseRepository,
    this._exerciseRepository,
  );

  @override
  Future<GetLanguageCoursesByLanguageOutput> buildUseCase(
    GetLanguageCoursesByLanguageInput input,
  ) async {
    final languageCourses =
        await _languageCourseRepository.getLanguageCoursesByLanguage(
      input.language,
    );
    var resultLanguageCourses = languageCourses;
    if (languageCourses.isNotEmpty) {
      final progress = await _exerciseRepository.getLearningProgress();
      final updatedLanguageCourses = languageCourses.map((languageCourse) {
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

          print(
              "progressPercentage: $progressPercentage, contentSize: $contentSize, completedCount: $completedCount");

          return content.copyWith(progress: progressPercentage);
        }).toList();

        return languageCourse.copyWith(
            languageCourseLearningContents: updatedContents);
      }).toList();
      resultLanguageCourses = updatedLanguageCourses;
    }
    return GetLanguageCoursesByLanguageOutput(
      languageCourses: resultLanguageCourses,
    );
  }
}

@freezed
class GetLanguageCoursesByLanguageInput extends BaseInput
    with _$GetLanguageCoursesByLanguageInput {
  const GetLanguageCoursesByLanguageInput._();
  const factory GetLanguageCoursesByLanguageInput({
    required LearningLanguage language,
  }) = _GetLanguageCoursesByLanguageInput;
}

@freezed
class GetLanguageCoursesByLanguageOutput extends BaseOutput
    with _$GetLanguageCoursesByLanguageOutput {
  const GetLanguageCoursesByLanguageOutput._();
  const factory GetLanguageCoursesByLanguageOutput({
    required List<LanguageCourse> languageCourses,
  }) = _GetLanguageCoursesByLanguageOutput;
}
