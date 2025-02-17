import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

@LazySingleton(as: BookmarkRepository)
class BookmarkRepositoryImpl implements BookmarkRepository {
  final BookmarkApiDataSource _bookmarkApiDataSource;
  final ApiUserBookmarkedCourseDataMapper _apiUserBookmarkedCourseDataMapper;

  const BookmarkRepositoryImpl(
    this._bookmarkApiDataSource,
    this._apiUserBookmarkedCourseDataMapper,
  );

  @override
  Future<void> bookmarkCourse({
    required String courseId,
    required CourseType courseType,
  }) async {
    await _bookmarkApiDataSource.bookmarkCourse(
      courseId: courseId,
      courseType: courseType.serverValue,
    );
  }

  @override
  Future<void> removeBookmarkCourse({
    required String courseId,
    required CourseType courseType,
  }) async {
    await _bookmarkApiDataSource.deleteBookmarkCourse(
      courseId: courseId,
      courseType: courseType.serverValue,
    );
  }

  @override
  Future<bool> getBookmarkCourse({required String courseId}) async {
    final response = await _bookmarkApiDataSource.getBookmarkCourse(
      courseId: courseId,
    );
    return response?.data ?? false;
  }

  @override
  Future<List<UserBookmarkCourse>> getUserBookmarkedCourses() async {
    final response = await _bookmarkApiDataSource.getUserBookmarkedCourses();
    return _apiUserBookmarkedCourseDataMapper
        .mapToListEntities(response?.results);
  }
}
