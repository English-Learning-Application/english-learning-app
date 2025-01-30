import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data.dart';

part 'api_category_course_data.freezed.dart';
part 'api_category_course_data.g.dart';

@freezed
class ApiCategoryCourseData with _$ApiCategoryCourseData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiCategoryCourseData({
    @JsonKey(name: 'categoryCourseId') String? categoryCourseId,
    @JsonKey(name: 'category') ApiCategory? category,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'englishName') String? englishName,
    @JsonKey(name: 'vietnameseName') String? vietnameseName,
    @JsonKey(name: 'frenchName') String? frenchName,
    @JsonKey(name: 'languageCourseLearningContent')
    List<ApiLanguageCourseLearningContentData>? languageCourseLearningContent,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiCategoryCourseData;

  factory ApiCategoryCourseData.fromJson(Map<String, dynamic> json) =>
      _$ApiCategoryCourseDataFromJson(json);
}
