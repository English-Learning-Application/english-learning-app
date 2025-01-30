import 'package:data/data.dart';
import 'package:injectable/injectable.dart';
import 'package:logic/logic.dart';
import 'package:services/services.dart';

@Injectable()
class ApiCategoryCourseMapper
    extends BaseDataMapper<ApiCategoryCourseData, CategoryCourse>
    with DataMapperMixin {
  final ApiLanguageCourseLearningContentDataMapper
      _languageCourseLearningContentDataMapper;
  final ApiCategoryMapper _categoryMapper;

  const ApiCategoryCourseMapper(
    this._languageCourseLearningContentDataMapper,
    this._categoryMapper,
  );

  @override
  ApiCategoryCourseData mapToData(CategoryCourse entity) {
    return ApiCategoryCourseData(
      categoryCourseId: entity.categoryCourseId,
      category: _categoryMapper.mapToData(entity.category),
      language: entity.language.serverValue,
      englishName: entity.englishName,
      vietnameseName: entity.vietnameseName,
      frenchName: entity.frenchName,
      languageCourseLearningContent:
          _languageCourseLearningContentDataMapper.mapToListData(
        entity.languageCourseLearningContent,
      ),
      createdAt: entity.createdAt?.toIso8601String(),
      updatedAt: entity.updatedAt?.toIso8601String(),
    );
  }

  @override
  CategoryCourse mapToEntity(ApiCategoryCourseData? data) {
    return CategoryCourse(
      categoryCourseId:
          data?.categoryCourseId ?? CategoryCourse.defaultCategoryCourseId,
      category: _categoryMapper.mapToEntity(data?.category),
      language: LearningLanguage.fromServerValue(data?.language),
      englishName: data?.englishName ?? CategoryCourse.defaultEnglishName,
      vietnameseName:
          data?.vietnameseName ?? CategoryCourse.defaultVietnameseName,
      frenchName: data?.frenchName ?? CategoryCourse.defaultFrenchName,
      languageCourseLearningContent:
          _languageCourseLearningContentDataMapper.mapToListEntities(
        data?.languageCourseLearningContent,
      ),
      createdAt: DateTimeUtils.tryParse(date: data?.createdAt),
      updatedAt: DateTimeUtils.tryParse(date: data?.updatedAt),
    );
  }
}
