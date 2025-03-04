import '../../../../logic.dart';

abstract class BookmarkRepository {
  Future<void> bookmarkCourse({
    required String courseId,
    required CourseType courseType,
  });

  Future<void> removeBookmarkCourse({
    required String courseId,
    required CourseType courseType,
  });

  void saveToLocalLanguageCourse({
    required LanguageCourse languageCourse,
  });

  List<LanguageCourse> getLocalLanguageCourse();

  void deleteLocalLanguageCourse(String languageCourseId);

  void saveToLocalCategoryCourse({
    required CategoryCourse categoryCourse,
  });

  List<CategoryCourse> getLocalCategoryCourse();

  void deleteLocalCategoryCourse(String categoryCourseId);

  Future<bool> getBookmarkCourse({
    required String courseId,
  });

  Future<List<UserBookmarkCourse>> getUserBookmarkedCourses();
}
