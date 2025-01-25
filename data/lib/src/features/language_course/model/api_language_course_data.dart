import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../data.dart';

part 'api_language_course_data.freezed.dart';
part 'api_language_course_data.g.dart';

@freezed
class ApiLanguageCourseData with _$ApiLanguageCourseData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiLanguageCourseData({
    @JsonKey(name: 'languageCourseId') String? languageCourseId,
    @JsonKey(name: 'language') String? language,
    @JsonKey(name: 'level') String? level,
    @JsonKey(name: 'learningType') String? learningType,
    @JsonKey(name: 'requiredSubscription') bool? requiredSubscription,
    @JsonKey(name: 'languageCourseLearningContents')
    List<ApiLanguageCourseLearningContentData>? languageCourseLearningContents,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiLanguageCourseData;

  factory ApiLanguageCourseData.fromJson(Map<String, dynamic> json) =>
      _$ApiLanguageCourseDataFromJson(json);
}

@freezed
class ApiLanguageCourseLearningContentData
    with _$ApiLanguageCourseLearningContentData {
  @JsonSerializable(explicitToJson: true)
  const factory ApiLanguageCourseLearningContentData({
    @JsonKey(name: 'languageCourseLearningContentId')
    String? languageCourseLearningContentId,
    @JsonKey(name: 'learningContentType') String? learningContentType,
    @JsonKey(name: 'words') List<ApiWordData>? words,
    @JsonKey(name: 'expressions') List<ApiExpressionData>? expressions,
    @JsonKey(name: 'idioms') List<ApiIdiomData>? idioms,
    @JsonKey(name: 'sentences') List<ApiSentenceData>? sentences,
    @JsonKey(name: 'phrasalVerbs') List<ApiPhrasalVerbData>? phrasalVerbs,
    @JsonKey(name: 'tenses') List<ApiTenseData>? tenses,
    @JsonKey(name: 'phonetics') List<ApiPhoneticData>? phonetics,
    @JsonKey(name: 'englishTitle') String? englishTitle,
    @JsonKey(name: 'vietnameseTitle') String? vietnameseTitle,
    @JsonKey(name: 'frenchTitle') String? frenchTitle,
    @JsonKey(name: 'englishDescription') String? englishDescription,
    @JsonKey(name: 'vietnameseDescription') String? vietnameseDescription,
    @JsonKey(name: 'frenchDescription') String? frenchDescription,
    @JsonKey(name: 'createdAt') String? createdAt,
    @JsonKey(name: 'updatedAt') String? updatedAt,
  }) = _ApiLanguageCourseLearningContentData;

  factory ApiLanguageCourseLearningContentData.fromJson(
          Map<String, dynamic> json) =>
      _$ApiLanguageCourseLearningContentDataFromJson(json);
}
