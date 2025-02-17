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

  Future<bool> getBookmarkCourse({
    required String courseId,
  });

  Future<List<UserBookmarkCourse>> getUserBookmarkedCourses();
}
