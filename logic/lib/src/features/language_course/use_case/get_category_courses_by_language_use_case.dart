import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_category_courses_by_language_use_case.freezed.dart';

@Injectable()
class GetCategoryCoursesByLanguageUseCase extends BaseFutureUseCase<
    GetCategoryCoursesByLanguageInput, GetCategoryCoursesByLanguageOutput> {
  final LanguageCourseRepository _languageCourseRepository;
  final ExerciseRepository _exerciseRepository;

  const GetCategoryCoursesByLanguageUseCase(
    this._languageCourseRepository,
    this._exerciseRepository,
  );

  @override
  Future<GetCategoryCoursesByLanguageOutput> buildUseCase(
      GetCategoryCoursesByLanguageInput input) async {
    final categoryCourses =
        await _languageCourseRepository.getCategoryCoursesByLanguage(
      categoryKeys: input.categoryKeys,
      language: input.language,
    );

    final courseIdsList =
        categoryCourses.map((e) => e.categoryCourseId).toList();
    if (courseIdsList.isNotEmpty) {
      final progress = await _exerciseRepository.getLearningProgress(
        courseIds: courseIdsList,
      );
      final updatedCategoryCourses = categoryCourses.map((categoryCourse) {
        final updatedContents =
            categoryCourse.languageCourseLearningContent.map((content) {
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
                    content.languageCourseLearningContentId &&
                e.courseId == categoryCourse.categoryCourseId) {
              completedCount++;
            }
          }).toList();
          progress.quizProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
                e.courseId == categoryCourse.categoryCourseId) {
              completedCount++;
            }
          }).toList();

          return content.copyWith(
            progress: (completedCount / contentSize) * 100,
          );
        }).toList();

        return categoryCourse.copyWith(
          languageCourseLearningContent: updatedContents,
        );
      }).toList();

      return GetCategoryCoursesByLanguageOutput(
        categoryCourses: updatedCategoryCourses,
      );
    }

    return GetCategoryCoursesByLanguageOutput(
      categoryCourses: categoryCourses,
    );
  }
}

@freezed
class GetCategoryCoursesByLanguageInput extends BaseInput
    with _$GetCategoryCoursesByLanguageInput {
  const GetCategoryCoursesByLanguageInput._();
  const factory GetCategoryCoursesByLanguageInput({
    required LearningLanguage language,
    @Default([]) List<String> categoryKeys,
  }) = _GetCategoryCoursesByLanguageInput;
}

@freezed
class GetCategoryCoursesByLanguageOutput extends BaseOutput
    with _$GetCategoryCoursesByLanguageOutput {
  const GetCategoryCoursesByLanguageOutput._();
  const factory GetCategoryCoursesByLanguageOutput({
    required List<CategoryCourse> categoryCourses,
  }) = _GetCategoryCoursesByLanguageOutput;
}
