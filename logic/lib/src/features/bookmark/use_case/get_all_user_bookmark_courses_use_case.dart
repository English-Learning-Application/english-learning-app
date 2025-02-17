import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

part 'get_all_user_bookmark_courses_use_case.freezed.dart';

@Injectable()
class GetAllUserBookmarkCoursesUseCase extends BaseFutureUseCase<
    GetAllUserBookmarkCoursesInput, GetAllUserBookmarkCoursesOutput> {
  final BookmarkRepository _bookmarkRepository;
  final LanguageCourseRepository _languageCourseRepository;
  final ExerciseRepository _exerciseRepository;

  const GetAllUserBookmarkCoursesUseCase(
    this._bookmarkRepository,
    this._languageCourseRepository,
    this._exerciseRepository,
  );

  @override
  Future<GetAllUserBookmarkCoursesOutput> buildUseCase(
    GetAllUserBookmarkCoursesInput input,
  ) async {
    final userBookmarkedCourses =
        await _bookmarkRepository.getUserBookmarkedCourses();
    if (userBookmarkedCourses.isEmpty) {
      return const GetAllUserBookmarkCoursesOutput(
        languageCourses: [],
        categoryCourses: [],
      );
    }

    final languageCourses = <LanguageCourse>[];
    final categoryCourses = <CategoryCourse>[];
    final listOfIdsForLanguageCourses = userBookmarkedCourses
        .where((element) => element.courseType == CourseType.language)
        .map((e) => e.courseId)
        .toList();

    final listOfIdsForCategoryCourses = userBookmarkedCourses
        .where((element) => element.courseType == CourseType.category)
        .map((e) => e.courseId)
        .toList();

    final totalIds = [
      ...listOfIdsForLanguageCourses,
      ...listOfIdsForCategoryCourses
    ];

    if (listOfIdsForLanguageCourses.isNotEmpty) {
      final languageCoursesData = await _languageCourseRepository
          .getLanguageCoursesByIds(listOfIdsForLanguageCourses);
      languageCourses.addAll(languageCoursesData);
    }

    if (listOfIdsForCategoryCourses.isNotEmpty) {
      final categoryCoursesData = await _languageCourseRepository
          .getCategoryCoursesByIds(listOfIdsForCategoryCourses);
      categoryCourses.addAll(categoryCoursesData);
    }

    final resultLanguageCourses = <LanguageCourse>[];
    final resultCategoryCourses = <CategoryCourse>[];

    if (totalIds.isNotEmpty) {
      final progress = await _exerciseRepository.getLearningProgress(
        courseIds: totalIds,
      );
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
                    content.languageCourseLearningContentId &&
                e.courseId == languageCourse.languageCourseId) {
              completedCount++;
            }
          }).toList();
          progress.quizProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
                e.courseId == languageCourse.languageCourseId) {
              completedCount++;
            }
          }).toList();

          progress.matchingProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
                e.courseId == languageCourse.languageCourseId) {
              completedCount++;
            }
          }).toList();

          progress.pronunciationProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
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

          progress.matchingProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
                e.courseId == categoryCourse.categoryCourseId) {
              completedCount++;
            }
          }).toList();

          progress.pronunciationProgress.map((e) {
            if (e.learningContentId ==
                    content.languageCourseLearningContentId &&
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
    }

    return GetAllUserBookmarkCoursesOutput(
      languageCourses: resultLanguageCourses,
      categoryCourses: resultCategoryCourses,
    );
  }
}

@freezed
class GetAllUserBookmarkCoursesInput extends BaseInput
    with _$GetAllUserBookmarkCoursesInput {
  const factory GetAllUserBookmarkCoursesInput() =
      _GetAllUserBookmarkCoursesInput;
}

@freezed
class GetAllUserBookmarkCoursesOutput extends BaseOutput
    with _$GetAllUserBookmarkCoursesOutput {
  const factory GetAllUserBookmarkCoursesOutput({
    required List<LanguageCourse> languageCourses,
    required List<CategoryCourse> categoryCourses,
  }) = _GetAllUserBookmarkCoursesOutput;
}
