import 'package:objectbox/objectbox.dart';
import 'package:injectable/injectable.dart';

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
}
