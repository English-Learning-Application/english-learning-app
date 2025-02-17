import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_all_learning_progress_use_case.freezed.dart';

@Injectable()
class GetAllLearningProgressUseCase extends BaseFutureUseCase<
    GetAllLearningProgressInput, GetAllLearningProgressOutput> {
  final ExerciseRepository _exerciseRepository;
  final LanguageCourseRepository _languageCourseRepository;

  const GetAllLearningProgressUseCase(
      this._exerciseRepository, this._languageCourseRepository);

  @override
  Future<GetAllLearningProgressOutput> buildUseCase(
      GetAllLearningProgressInput input) async {
    final progress =
        await _exerciseRepository.getLearningProgress(courseIds: []);

    final courseIdsList =
        progress.flashCardProgress.map((e) => e.courseId).toSet().toList();

    List<LanguageCourse> languageCourses = [];
    List<CategoryCourse> categoryCourses = [];

    if (courseIdsList.isEmpty) {
      return GetAllLearningProgressOutput(
        languageCourses: languageCourses,
        categoryCourses: categoryCourses,
        learningProgress: progress,
      );
    }
    await Future.wait(
      [
        _languageCourseRepository
            .getCategoryCoursesByIds(courseIdsList)
            .then((value) => categoryCourses.addAll(value)),
        _languageCourseRepository
            .getLanguageCoursesByIds(courseIdsList)
            .then((value) => languageCourses.addAll(value)),
      ],
    );

    final resultLanguageCourses = <LanguageCourse>[];
    final resultCategoryCourses = <CategoryCourse>[];

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
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == languageCourse.languageCourseId) {
            completedCount++;
          }
        }).toList();
        progress.quizProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == languageCourse.languageCourseId) {
            completedCount++;
          }
        }).toList();

        progress.matchingProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == languageCourse.languageCourseId) {
            completedCount++;
          }
        }).toList();

        progress.pronunciationProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == languageCourse.languageCourseId) {
            completedCount++;
          }
        }).toList();

        final progressPercentage = (completedCount / contentSize) * 100;

        return content.copyWith(progress: progressPercentage);
      }).toList();

      return languageCourse.copyWith(
          languageCourseLearningContents: updatedContents);
    }).toList();
    resultLanguageCourses.addAll(updatedLanguageCourses);

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
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == categoryCourse.categoryCourseId) {
            completedCount++;
          }
        }).toList();
        progress.quizProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == categoryCourse.categoryCourseId) {
            completedCount++;
          }
        }).toList();

        progress.matchingProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == categoryCourse.categoryCourseId) {
            completedCount++;
          }
        }).toList();

        progress.pronunciationProgress.map((e) {
          if (e.learningContentId == content.languageCourseLearningContentId &&
              e.courseId == categoryCourse.categoryCourseId) {
            completedCount++;
          }
        }).toList();

        final progressPercentage = (completedCount / contentSize) * 100;

        return content.copyWith(progress: progressPercentage);
      }).toList();

      return categoryCourse.copyWith(
        languageCourseLearningContent: updatedContents,
      );
    }).toList();

    resultCategoryCourses.addAll(updatedCategoryCourses);

    return GetAllLearningProgressOutput(
      languageCourses: resultLanguageCourses,
      categoryCourses: resultCategoryCourses,
      learningProgress: progress,
    );
  }
}

@freezed
class GetAllLearningProgressInput extends BaseInput
    with _$GetAllLearningProgressInput {
  const factory GetAllLearningProgressInput() = _GetAllLearningProgressInput;
}

@freezed
class GetAllLearningProgressOutput extends BaseOutput
    with _$GetAllLearningProgressOutput {
  const factory GetAllLearningProgressOutput({
    @Default([]) List<LanguageCourse> languageCourses,
    @Default([]) List<CategoryCourse> categoryCourses,
    required LearningProgress learningProgress,
  }) = _GetAllLearningProgressOutput;
}
