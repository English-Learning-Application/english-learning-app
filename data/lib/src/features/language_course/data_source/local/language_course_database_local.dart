import 'package:injectable/injectable.dart';

import '../../../../../data.dart';
import '../../../../app_repository/source/database/objectbox/objectbox.g.dart';

@LazySingleton()
class LanguageCourseDatabaseLocal {
  final Store store;

  LanguageCourseDatabaseLocal(this.store);

  int putLanguageCourse(ApiLanguageCourseData languageCourse) =>
      store.box<ApiLanguageCourseData>().put(languageCourse);

  ApiLanguageCourseData? getLanguageCourse(int id) =>
      store.box<ApiLanguageCourseData>().get(id);
}
