import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiUserBookmarkedCourseDataMapper
    extends BaseDataMapper<ApiUserBookmarkedCourseData, UserBookmarkCourse>
    with DataMapperMixin {
  @override
  ApiUserBookmarkedCourseData mapToData(UserBookmarkCourse entity) {
    return ApiUserBookmarkedCourseData(
      userBookmarkedCourseId: entity.userBookmarkedCourseId,
      courseId: entity.courseId,
      courseType: entity.courseType.serverValue,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  UserBookmarkCourse mapToEntity(ApiUserBookmarkedCourseData? data) {
    return UserBookmarkCourse(
      userBookmarkedCourseId: data?.userBookmarkedCourseId ??
          UserBookmarkCourse.defaultUserBookmarkedCourseId,
      courseId: data?.courseId ?? UserBookmarkCourse.defaultCourseId,
      courseType: CourseType.fromServerValue(data?.courseType),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
