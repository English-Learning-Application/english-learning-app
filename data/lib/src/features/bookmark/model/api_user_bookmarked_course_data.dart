import 'package:freezed_annotation/freezed_annotation.dart';

part 'api_user_bookmarked_course_data.freezed.dart';
part 'api_user_bookmarked_course_data.g.dart';

@freezed
class ApiUserBookmarkedCourseData with _$ApiUserBookmarkedCourseData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiUserBookmarkedCourseData({
    @JsonKey(name: 'userBookmarkedCourseId') String? userBookmarkedCourseId,
    @JsonKey(name: 'courseId') String? courseId,
    @JsonKey(name: 'courseType') String? courseType,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiUserBookmarkedCourseData;

  factory ApiUserBookmarkedCourseData.fromJson(Map<String, dynamic> json) =>
      _$ApiUserBookmarkedCourseDataFromJson(json);
}
