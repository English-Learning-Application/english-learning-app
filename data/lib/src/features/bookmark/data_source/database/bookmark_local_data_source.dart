import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

import 'model/local_category_course_data.dart';
import 'model/local_language_course_data.dart';

@LazySingleton()
class BookmarkLocalDataSource {
  final Store _store;

  const BookmarkLocalDataSource(this._store);

  int saveToLocalLanguageCourse(
    LocalLanguageCourseData localLanguageCourseData,
  ) {
    return _store.box<LocalLanguageCourseData>().put(localLanguageCourseData);
  }

  List<LocalLanguageCourseData> getLocalLanguageCourse() {
    return _store.box<LocalLanguageCourseData>().getAll();
  }

  bool deleteLocalLanguageCourse(String languageCourseId) {
    final localLanguageCourses = _store.box<LocalLanguageCourseData>().getAll();

    for (final localLanguageCourse in localLanguageCourses) {
      if (localLanguageCourse.languageCourseId == languageCourseId) {
        return _store
            .box<LocalLanguageCourseData>()
            .remove(localLanguageCourse.id!);
      }
    }

    return false;
  }

  int saveToLocalCategoryCourse(
    LocalCategoryCourseData localCategoryCourseData,
  ) {
    return _store.box<LocalCategoryCourseData>().put(localCategoryCourseData);
  }

  List<LocalCategoryCourseData> getLocalCategoryCourse() {
    return _store.box<LocalCategoryCourseData>().getAll();
  }

  bool deleteLocalCategoryCourse(String categoryCourseId) {
    final localCategoryCourses = _store.box<LocalCategoryCourseData>().getAll();

    for (final localCategoryCourse in localCategoryCourses) {
      if (localCategoryCourse.categoryCourseId == categoryCourseId) {
        return _store
            .box<LocalCategoryCourseData>()
            .remove(localCategoryCourse.id!);
      }
    }
    return false;
  }
}
