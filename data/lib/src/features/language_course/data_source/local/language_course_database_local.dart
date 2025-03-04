import 'package:injectable/injectable.dart';
import 'package:objectbox/objectbox.dart';

import '../../../../../data.dart';

@LazySingleton()
class LanguageCourseDatabaseLocal {
  final Store store;

  LanguageCourseDatabaseLocal(this.store);

  int putLanguageCourse(ApiLanguageCourseData languageCourse) =>
      store.box<ApiLanguageCourseData>().put(languageCourse);

  ApiLanguageCourseData? getLanguageCourse(int id) =>
      store.box<ApiLanguageCourseData>().get(id);
}
