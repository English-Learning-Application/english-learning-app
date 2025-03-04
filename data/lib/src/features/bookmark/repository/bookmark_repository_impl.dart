import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';

import '../data_source/database/bookmark_local_data_source.dart';
import '../data_source/database/mapper/local_category_course_data_mapper.dart';
import '../data_source/database/mapper/local_language_course_data_mapper.dart';

@LazySingleton(as: BookmarkRepository)
class BookmarkRepositoryImpl implements BookmarkRepository {
  final BookmarkApiDataSource _bookmarkApiDataSource;
  final ApiUserBookmarkedCourseDataMapper _apiUserBookmarkedCourseDataMapper;
  final BookmarkLocalDataSource _bookmarkLocalDataSource;
  final LocalLanguageCourseDataMapper _localLanguageCourseDataMapper;
  final LocalCategoryCourseDataMapper _localCategoryCourseDataMapper;

  const BookmarkRepositoryImpl(
    this._bookmarkApiDataSource,
    this._apiUserBookmarkedCourseDataMapper,
    this._bookmarkLocalDataSource,
    this._localLanguageCourseDataMapper,
    this._localCategoryCourseDataMapper,
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

  @override
  List<LanguageCourse> getLocalLanguageCourse() {
    final localLanguageCourseData =
        _bookmarkLocalDataSource.getLocalLanguageCourse();

    return _localLanguageCourseDataMapper.mapToListEntities(
      localLanguageCourseData,
    );
  }

  @override
  void saveToLocalLanguageCourse({required LanguageCourse languageCourse}) {
    final localLanguageCourseData =
        _localLanguageCourseDataMapper.mapToData(languageCourse);

    _bookmarkLocalDataSource.saveToLocalLanguageCourse(localLanguageCourseData);
  }

  @override
  void deleteLocalLanguageCourse(String languageCourseId) {
    _bookmarkLocalDataSource.deleteLocalLanguageCourse(languageCourseId);
  }

  @override
  void deleteLocalCategoryCourse(String categoryCourseId) {
    _bookmarkLocalDataSource.deleteLocalCategoryCourse(categoryCourseId);
  }

  @override
  List<CategoryCourse> getLocalCategoryCourse() {
    final localCategoryCourseData =
        _bookmarkLocalDataSource.getLocalCategoryCourse();

    return _localCategoryCourseDataMapper.mapToListEntities(
      localCategoryCourseData,
    );
  }

  @override
  void saveToLocalCategoryCourse({required CategoryCourse categoryCourse}) {
    final localCategoryCourseData =
        _localCategoryCourseDataMapper.mapToData(categoryCourse);

    _bookmarkLocalDataSource.saveToLocalCategoryCourse(localCategoryCourseData);
  }
}
