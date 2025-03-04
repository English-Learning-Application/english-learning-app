import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_course_learning_content_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_language_course_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalLanguageCourseDataMapper
    extends BaseDataMapper<LocalLanguageCourseData, LanguageCourse>
    with DataMapperMixin {
  final LocalCourseLearningContentDataMapper
      _localCourseLearningContentDataMapper;

  const LocalLanguageCourseDataMapper(
      this._localCourseLearningContentDataMapper);

  @override
  LocalLanguageCourseData mapToData(LanguageCourse entity) {
    return LocalLanguageCourseData(
      languageCourseId: entity.languageCourseId,
      learningLanguage: entity.language.serverValue,
      languageLevel: entity.level.serverValue,
      learningType: entity.learningType.serverValue,
      requiredSubscription: entity.requiredSubscription,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    )..courseLearningContents.addAll(
        _localCourseLearningContentDataMapper.mapToListData(
          entity.languageCourseLearningContents,
        ),
      );
  }

  @override
  LanguageCourse mapToEntity(LocalLanguageCourseData? data) {
    return LanguageCourse(
      languageCourseId:
          data?.languageCourseId ?? LanguageCourse.defaultLanguageCourseId,
      languageCourseLearningContents:
          _localCourseLearningContentDataMapper.mapToListEntities(
        data?.courseLearningContents,
      ),
      language: LearningLanguage.fromServerValue(data?.learningLanguage),
      learningType: LearningType.fromServerValue(data?.learningType),
      level: LanguageLevel.fromServerValue(data?.languageLevel),
      requiredSubscription: data?.requiredSubscription ??
          LanguageCourse.defaultRequiredSubscription,
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
