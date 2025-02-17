import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logic/logic.dart';

part 'user_bookmark_course.freezed.dart';

@freezed
class UserBookmarkCourse with _$UserBookmarkCourse {
  const UserBookmarkCourse._();

  const factory UserBookmarkCourse({
    @Default(UserBookmarkCourse.defaultUserBookmarkedCourseId)
    String userBookmarkedCourseId,
    @Default(UserBookmarkCourse.defaultCourseId) String courseId,
    @Default(UserBookmarkCourse.defaultCourseType) CourseType courseType,
    @Default(UserBookmarkCourse.defaultCreatedAt) DateTime? createdAt,
    @Default(UserBookmarkCourse.defaultUpdatedAt) DateTime? updatedAt,
  }) = _UserBookmarkCourse;

  static const defaultUserBookmarkedCourseId = '';
  static const defaultCourseId = '';
  static const CourseType defaultCourseType = CourseType.language;
  static const DateTime? defaultCreatedAt = null;
  static const DateTime? defaultUpdatedAt = null;
}
