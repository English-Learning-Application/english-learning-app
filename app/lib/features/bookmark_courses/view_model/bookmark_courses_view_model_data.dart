part of 'bookmark_courses.dart';

@freezed
class BookmarkCoursesViewModelData extends BaseViewModelData
    with _$BookmarkCoursesViewModelData {
  const BookmarkCoursesViewModelData._();
  const factory BookmarkCoursesViewModelData({
    @Default([]) List<LanguageCourse> bookmarkedLanguageCourses,
    @Default([]) List<CategoryCourse> bookmarkedCategoryCourses,
  }) = _BookmarkCoursesViewModelData;
}
