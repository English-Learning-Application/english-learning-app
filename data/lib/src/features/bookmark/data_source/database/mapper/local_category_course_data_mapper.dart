import 'package:data/data.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_category_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/mapper/local_course_learning_content_data_mapper.dart';
import 'package:data/src/features/bookmark/data_source/database/model/local_category_course_data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class LocalCategoryCourseDataMapper
    extends BaseDataMapper<LocalCategoryCourseData, CategoryCourse>
    with DataMapperMixin {
  final LocalCategoryDataMapper _localCategoryDataMapper;
  final LocalCourseLearningContentDataMapper
      _localCourseLearningContentDataMapper;

  const LocalCategoryCourseDataMapper(
    this._localCategoryDataMapper,
    this._localCourseLearningContentDataMapper,
  );

  @override
  LocalCategoryCourseData mapToData(CategoryCourse entity) {
    return LocalCategoryCourseData(
      categoryCourseId: entity.categoryCourseId,
      language: entity.language.serverValue,
      englishName: entity.englishName,
      vietnameseName: entity.vietnameseName,
      frenchName: entity.frenchName,
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    )
      ..languageCourseLearningContent
          .addAll(_localCourseLearningContentDataMapper.mapToListData(
        entity.languageCourseLearningContent,
      ))
      ..category.target = _localCategoryDataMapper.mapToData(
        entity.category,
      );
  }

  @override
  CategoryCourse mapToEntity(LocalCategoryCourseData? data) {
    return CategoryCourse(
      categoryCourseId:
          data?.categoryCourseId ?? CategoryCourse.defaultCategoryCourseId,
      category: _localCategoryDataMapper.mapToEntity(data?.category.target),
      language: LearningLanguage.fromServerValue(data?.language),
      englishName: data?.englishName ?? CategoryCourse.defaultEnglishName,
      vietnameseName:
          data?.vietnameseName ?? CategoryCourse.defaultVietnameseName,
      frenchName: data?.frenchName ?? CategoryCourse.defaultFrenchName,
      languageCourseLearningContent:
          _localCourseLearningContentDataMapper.mapToListEntities(
        data?.languageCourseLearningContent,
      ),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
